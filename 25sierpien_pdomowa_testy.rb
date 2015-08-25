require 'test/unit'
require './25sierpien_pdomowa'
require 'mysql2'

class TodoListAppTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup
    sql = '
      CREATE TABLE IF NOT EXISTS `todo_lists`(
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `description` TEXT,
        `is_active` BOOL NOT NULL DEFAULT true,
        PRIMARY KEY(ID)
      ) engine=InnoDB;'

    @db.query(sql)

    @list = TodoListApp::List.new(@db)
  end

  def teardown
    @db.query('DROP TABLE `todo_lists`')
  end


  def test_add_item
    assert_equal 1, @list.add('shop', 'buy fruit', true)
    assert_equal 2, @list.add('pharmacy', 'buy medicine', true)
  end

  def test_list_product
    @list.add('shop', 'buy fruit', true)
    @list.add('pharmacy', 'buy medicine', true)
    @list.add('warsztat', 'zrobic przeglad', false)
    assert_equal [Hash[ :id => 1, :name => 'shop'],
                  Hash[ :id => 2, :name => 'pharmacy']], @list.list
  end

  def test_drop_product
    @list.add('shop', 'buy fruit', true)
    @list.add('pharmacy', 'buy medicine', true)
    assert @shop.drop(1)
    assert_equal [Hash[ :id => 2, :name => 'pharmacy']], @list.list
  end

  def test_show_product
    @list.add('shop', 'buy fruit', true)
    @list.add('pharmacy', 'buy medicine', true)
    assert_equal Hash[ :id => 2, :name => 'pharmacy', :description => 'buy medicine', :is_active => 1 ], @list.details(2)
  end

  def test_change_status
    @list.add('shop', 'buy fruit', true)
    @list.add('pharmacy', 'buy medicine', true)
    @list.add('warsztat', 'zrobic przeglad', false)
    assert @list.change_state(3, true)
    assert_equal [Hash[ :id => 1, :name => 'shop'],
                  Hash[ :id => 2, :name => 'pharmacy'],
                  Hash[ :id => 3, :name => 'warsztat']], @list.list
  end

end
