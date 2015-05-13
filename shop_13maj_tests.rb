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