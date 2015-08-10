require 'test/unit'
require './5sierpien_mysql_ex'
require 'mysql2'

class ProductsTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup
    @db.query("create table users (
              id int(11) not null auto_increment,
              email varchar(255) not null,
              login varchar(255) not null,
              gender varchar(255) not null,
              status smallint(3) not null default 1,
              primary key(id)
              ) engine=InnoDB;")
  end

  def teardown
    #jak mamy 10 testow - to za kazdym arzem bedzie - po kazdym tescie wyczysci

    @db.query("drop table users")
    # @db.query("drop table user_details")
  end

end
