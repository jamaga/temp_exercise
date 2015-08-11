require 'test/unit'
require './10sierpien_homework'
require 'mysql2'

class ProductsTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup
    @db.query("create table products (
              id int(11) not null auto_increment,
              name varchar(255) not null,
              price smallint(3) not null,
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
    
  end
end