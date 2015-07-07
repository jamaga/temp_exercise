require 'test/unit'
require './30czerwiec_suma'

class SumaTest < Test::Unit::TestCase

  def test_adding
    s = Suma.new
    assert_equal 10, s.adding([1, 6, 2, 1])
  end

  def test_adding_even
    s = Suma.new
    assert_equal 12, s.adding_even([1, 5, 2, 1, 4, 6])
  end

  def test_add_full_num
    s = Suma.new
    assert_equal 70, s.add_full_num([1, 2, 5, 45, 10, 20, 5, 6, 40])
  end

  def test_sum_numbers
    s = Suma.new
    assert_equal 7, s.sum_numbers({"a" => 1, "b" => [1,2,3], "c" => "ala ma kota" })
  end

  def test_multiply_from_array
    s = Suma.new
    assert_equal 10, s.multiply_from_array([2,5])
  end

  def test_add_every_second
    s = Suma.new
    assert_equal 13, s.add_every_second([1,3,5,6,7])
  end

  def test_multiply_in_array
    s = Suma.new
    assert_equal 288, s.multiply_in_array({"a" => 1, "b" => [1,2,3], "c" => "ala ma kota", "d" => [2,4,6] })
  end

end