#program ktory bedzie w ShopApp (modul), 2 klasy
#1 - klasa Shop, 2ga -Product
# ma byc 1 tabela - products
#w klasie Shop - ma sie dac dodawac produkty do bazy
# usuwac wybrane produkty z bazy
# listowac produkty z bazy, zmieniac status produktu na niedostepny -
#i wtedy listowanie nie obejmuje wylaczonego produktu
# moc cos kupowac ze sklepu - ale tylko dostepne pri=odukty
#baza danycg - id autoincrement, nazwa, cena pr, opis produktu, is_active (default - 1)

require 'test/unit'
require './20sierpien_lekcja'
require 'mysql2'

class ShopAppTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup
    sql = '
      CREATE TABLE IF NOT EXISTS `products`(
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `price` FLOAT(8,2) NOT NULL,
        `description` TEXT,
        `is_active` BOOL NOT NULL DEFAULT true,
        PRIMARY KEY(ID)
      ) engine=InnoDB;'

    @db.query(sql)

    @shop = ShopApp::Shop.new(@db)
  end

  def teardown
    @db.query('DROP TABLE `products`')
  end

  def test_add_products
    assert_equal 1, @shop.add('apple', 2.40, 'bardzo dobre', true)
    assert_equal 2, @shop.add('pear', 3, 'bardzo zla', true)
  end

  def test_list_product
    @shop.add('apple', 2.40, 'bardzo dobre', true)
    @shop.add('pear', 3, 'bardzo zla', true)
    @shop.add('arbuz', 5.20, 'bardzo zla', false)
    assert_equal [Hash[ :id => 1, :name => 'apple'],
                  Hash[ :id => 2, :name => 'pear']], @shop.list
  end

  def test_drop_product
    @shop.add('apple', 2.40, 'bardzo dobre', true)
    @shop.add('pear', 3, 'bardzo zla', true)
    assert @shop.drop(1)
    assert_equal [Hash[ :id => 2, :name => 'pear']], @shop.list
  end

  def test_show_product
    @shop.add('apple', 2.40, 'bardzo dobre', true)
    @shop.add('pear', 3, 'bardzo zla', true)
    assert_equal Hash[ :id => 2, :name => 'pear', :description => 'bardzo zla', :is_active => 1, :price => 3.00 ], @shop.details(2)
  end

  def test_change_status
    @shop.add('apple', 2.40, 'bardzo dobre', true)
    @shop.add('pear', 3, 'bardzo zla', true)
    @shop.add('arbuz', 5.20, 'bardzo zla', false)
    assert @shop.change_state(3, true)
    assert_equal [Hash[ :id => 1, :name => 'apple'],
                  Hash[ :id => 2, :name => 'pear'],
                  Hash[ :id => 3, :name => 'arbuz']], @shop.list
  end
end