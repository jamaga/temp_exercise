#program ktory
#klasa Sklep - i klasa Produkt
#do tego 2 tabele - tabela shop i tabela products
#mozmey miec wiele sklepow
# e sklepie dan eprodukty
#tabela shop - 1 pole - name
#tabela products - ma miec oprocz id, shop_id (relacje)
#mammiec title, price
#klasa Sklep - ma miiec: lista sklepow,
# mozliwosc wybrania sklepu (chose_shop)
#jak wezme liste sklepow - ma mi sie wyswietlic lista ktora jest w bazie Shop (z id)
#jak chose_shop - to moge otrzymywac metody z klasy Product (wywolac metody z klasy Product)
# i add Shop

# shop = Shop.new
# p shop.add('U Antka') # => 1
# p shop.add('U Baski') # => 2
# p shop.list # => [{id: 1, name: "U Antka"}, {id: 2, name: "U Baski" }]
# p shop.drop(1) # => true
# p shop.list # => [{id: 2, name: "U Baski" }]
# p shop.show(2)  #=> ... tu dorobimy

require 'test/unit'
require './26sierpien_lekcja'
require 'mysql2'

class ShopAppTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root", password: "", database: "ruby_tests")
  end

  def setup
    @db.query('
    CREATE TABLE IF NOT EXISTS `shops`(
      `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
      `name` VARCHAR(255) NOT NULL,
      PRIMARY KEY(`id`)
    ) engine=InnoDB;')

    #relacja - takie same wlasiwosci OPROCZ AUTIINCREMENT!!!!
    @db.query('
    CREATE TABLE IF NOT EXISTS `products`(
      `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
      `shop_id` INT(11) UNSIGNED NOT NULL,
      `title` VARCHAR(255) NOT NULL,
      `price` FLOAT(8, 2) NOT NULL DEFAULT 0,
      PRIMARY KEY(`id`),
      KEY(`shop_id`)
    ) engine=InnoDB;')

    @shop = ShopApp::Shop.new(@db)
  end

  #najpierw kasujemy te t abele ktore maja RELACJE.
  def teardown
    @db.query('DROP TABLE `products`')
    @db.query('DROP TABLE `shops`')
  end

  def test_add_shop
    assert_equal 1, @shop.add('U Antka')
    assert_equal 2, @shop.add('U Baski')
  end

  def test_list_shops
    @shop.add('U Antka')
    @shop.add('U Baski')
    assert_equal [Hash[ :id => 1, :name => "U Antka" ],
                  Hash[ :id => 2, :name => "U Baski" ]], @shop.list
  end

  def test_drop_shop
    @shop.add('U Antka')
    @shop.add('U Baski')
    assert @shop.drop(1)
    assert_equal [Hash[ :id => 2, :name => "U Baski" ]], @shop.list
  end

  #chcemy moc zarzadzac produktami
  #jak wezmiemy show to chcemy zwrocic wszys
  #klasa shop ma byc dziedziczona przez produkt
  #jak damy show_products to mamay widziec wszystkie produkty z danego sklepu
  # add_product - ma dodawac produkty do konkretnego sklepu
  # drop_product - ma usuwac produkt z danego sklepu - 2 parametry - id sklepu i id produktu
  #klasa produkt ma byc dziedziczona z klasy sjop
  #metody add_prouct drop_product show_products ... maja byc w klasie Product

  def test_add_product_to_shop
    @shop.add('U Antka')
    @shop.add('U Baski')
    assert_equal 1, @shop.add_product(1, { :title => 'apple', :price => 2.50 })
    assert_equal 2, @shop.add_product(1, { :title => 'banana' :price => 4.00 })
    assert_equal 3, @shop.add_product(2, { :title => 'orange' :price => 3.25 })
  end

  def test_list_products_from_shop
    @shop.add('U Antka')
    @shop.add('U Baski')
    @shop.add_product(1, { :title => 'apple', :price => 2.50 })
    @shop.add_product(1, { :title => 'banana' :price => 4.00 })
    @shop.add_product(2, { :title => 'orange' :price => 3.25 })

    assert_equal [Hash[ :id => 1, :title => 'apple' , :price => 2.50 ],
                  Hash[ :id => 2, :title => 'banana', :price => 4.00 ]], @shop.show_products(1)

    #trzeba bedzie wyciagnac selecta z polami jak id title price, mam pole shop_id ktorego nie chce tu widziec
    # robimmy nie select *
    # tylko select id, title, price ...   - to do tego c mialam watpliwosc


    assert_equal [Hash[ :id => 3, :title => 'orange', :price => 3.25 ]], @shop.show_products(2)
  end

  def test_drop_product_from_shop
    @shop.add('U Antka')
    @shop.add_product(1, { :title => 'apple', :price => 2.50 })
    @shop.add_product(1, { :title => 'banana' :price => 4.00 })
    # 1wszy parametr - i dsklepu 2gi - id produktu
    assert @shop.drop_product(1, 2)
    assert_equal [Hash[ :id => 1, :title => 'apple' , :price => 2.50 ]], @shop.show_products(1)
  end

end