require 'minitest/autorun'
require './shop'

class ShopTest < Minitest::Test

  def test_display_price_fail
    s = Shop.new(60, "pies co jezdzil koleja")
    assert 50 != s.display_price
  end

  def test_display_price_success
    s = Shop.new(60, "pies co jezdzil koleja")
    assert_equal 60, s.display_price
  end

  def test_to_name_fail
    s = Shop.new(60, "pies co jezdzil koleja")
    assert "kot w butach" != s.to_name
  end

  def test_to_name_success
    s = Shop.new(60, "pies co jezdzil koleja")
    assert_equal "pies co jezdzil koleja", s.to_name
  end

end
