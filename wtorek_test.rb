require 'test/unit'
require './wtorek'

class ColumnsTest < Test::Unit::TestCase

  def setup
    @base = Columns.new('pon27.txt')
  end

  def test_multiplication_two_elem_of_column_with_one_param_given
    assert_equal 6, @base.calculate(2)
  end

  def test_multip_of_all_elem_of_columns_without_prams_given
    assert_equal [5, 20, 6, 30], @base.calculate
  end
end