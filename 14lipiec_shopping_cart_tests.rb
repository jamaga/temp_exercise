require 'test/unit'
require './14lipec_shopping_cart'

class ShopTest < Test::Unit::TestCase

  def test_add_to_cart
    cart = Shop::Cart.new
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    assert_equal ['apple', 'banana', 'peach'], cart.list
  end

  def test_drop_from_cart
    cart = Shop::Cart.new
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    cart.drop('apple')
    assert_equal ['banana', 'peach'], cart.list
  end

  def test_purge
    cart = Shop::Cart.new
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    assert_equal [], cart.purge
  end

end