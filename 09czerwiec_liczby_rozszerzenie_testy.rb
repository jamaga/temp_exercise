require 'test/unit'
require './09czerwiec_liczby_rozszerzenie'

class ArrayTest < Test::Unit::TestCase

  def test_sum
    assert_equal 7, [1,2,4].sum
  end

  def test_square
    assert_equal [1,4,9], [1,2,3].square
  end

end