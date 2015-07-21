require 'test/unit'
require './14lipec_shopping_cart'

class ShopTest < Test::Unit::TestCase

  def setup
    @asortym = { 'apple' => 2.22, 'peach' => 1.5, 'banana' => 3.22 }
  end

  def test_add_to_cart
    cart = Shop::Cart.new(@asortym)
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    cart.add('ananas')
    assert_equal ['apple', 'banana', 'peach'], cart.list
    #cart add cos nie istniejacego - to nie bedzie
  end

  def test_drop_from_cart
    cart = Shop::Cart.new(@asortym)
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    cart.drop('apple')
    cart.add('ananas')
    assert_equal ['banana', 'peach'], cart.list
  end

  def test_purge
    cart = Shop::Cart.new(@asortym)
    cart.add('apple')
    cart.add('banana')
    cart.add('peach')
    assert_equal [], cart.purge
  end

  def test_total_price
    cart = Shop::Cart.new(@asortym)
    cart.add('apple')
    cart.add('banana')
    cart.add('ananas')
    assert_equal 5.44, cart.total_price
  end

end

#musze sprawdzac w testech czy czy jak dodaje to - ta rzecz jest w asortymencie