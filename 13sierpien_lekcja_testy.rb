require 'test/unit'
require './13sierpien_lekcja'
require 'mysql2'

class UserAppTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby")
  end

  def setup
    @db.query("create table users (
              id int(11) not null auto_increment,
              username varchar(255) not null,
              email varchar(255) not null,
              status smallint(3) not null default 0,
              primary key(id)
              ) engine=InnoDB;")

    #relacja - usr_id po id dac lepiej - musi bc takie same jak w tabeli user
    #tylko bez auto incrementa
    @db.query("create table user_details (
              id int(11) not null auto_increment,
              user_id int(11) not null,
              first_name varchar(255) not null,
              last_name varchar(255) not null,
              primary key(id)
              ) engine=InnoDB;")

    @u = UserApp::UsersList.new(@db)
    @u.add({:username => 'login1', :email => 'mail1@domain.com', :status => 1}, {:first_name => 'Zenon', :last_name => 'Kowalski'})
    @u.add({:username => 'login2', :email => 'mail2@domain.com', :status => 0}, {:first_name => 'Adam', :last_name => 'Michnik'})
  end

  def teardown
    @db.query("drop table users")
    @db.query("drop table user_details")
  end

  def test_add
    assert_equal ['login1', 'login2'], @u.list
  end

  def test_details
    assert_equal "Name: 'Zenon Kowalski', Email: 'mail1@domain.com', Status: 1", @u.details('login1')
    assert_equal "user does not exist", @u.details('login5')
  end

  def test_drop
    @u.drop('login2')
    assert_equal ['login1'],@u.list
    assert_equal "user does not exist so u cannot remove it", @u.drop('login5')
  end

end