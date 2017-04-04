require 'test/unit'

class Calc
  def initialize(arr)
    @data = arr
  end

  def sum
   @data.inject(:+)
  end

  def count
    @data.count
  end

  def avg
    (sum.to_f / count.to_f).round(2)
  end
end


class CalcTest < Test::Unit::TestCase

  def setup
    @c = Calc.new([1, 3, 1])
  end

  def test_sum
    assert_equal 5, @c.sum
  end

  def test_avg
    assert_equal 1.67, @c.avg
  end

  def test_count
    assert_equal 3, @c.count
  end
end
