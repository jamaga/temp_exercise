require 'test/unit'
require './10sierpien_homework'
require 'mysql2'

class ProductTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup
    @db.query("create table products (
              id int(11) not null auto_increment,
              name varchar(255) not null,
              price double(3,2) not null,
              primary key(id)
              ) engine=InnoDB;")
  end

  def teardown
    @db.query("drop table products")
  end

  def test_add_and_list_product
    p = Product.new(@db)
    p.add("apple", 3.99)
    p.add("pear", 5.33)
    assert_equal( {1 => 'apple', 2 => 'pear'}, p.list)
  end

  def test_show_fruit
    p = Product.new(@db)
    p.add("apple", 3.99)
    p.add("pear", 5.33)
    assert_equal 'pear: 5.33', p.show(2)
  end

end

#
# id = u.add_user("antek@op.pl", "ant", "male", 3) #dodanie usera zwraca nam id dodanego usera!
# assert_equal ["antek@op.pl", "ant", "male", 3], u.show_user(id)