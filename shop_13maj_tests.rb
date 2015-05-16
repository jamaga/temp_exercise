require 'test/unit'
require './shop_13maj'

class ShopTest < Test::Unit::TestCase

  def setup
    @fruits = Shop.new('shop_13maj.txt')
  end

  def test_prices
    assert_equal 4.5, @fruits.find_price('Banana')
    assert_equal 2, @fruits.find_price('Apple')
  end

  def test_checking_list_of_products
    fruits = { Apple: 2, Banana: 4.5, Avocado: 6, Pear: 3.85 }
    assert_equal fruits, @fuits.show_all
  end

end


# 2. Napisać program "Shop", który będzie pomocny podczas wyszukiwania produktów w sklepie.
# - program ma wczytywać bazę produktów z pliku tekstowego. Format pliku:
# Name:"Apple";Price:2|Name:"Banana";Price:4.5|Name:"Avocado";Price:6|Name:"Pear";Price:3.85
#
# - program ma mieć możliwość sprawdzenia ceny produktu
# - program ma mieć możliwość zobaczenia listy produktów
#
# np.
# shop = new Shop('database.txt')
# puts shop.find('Banana') # => 4.5
# puts shop.all # => { Apple: 2, Banana: 4.5 Avocado: 6, Pear: 3.85 }