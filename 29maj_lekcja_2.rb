require 'test/unit'

class Foo

  def initialize(data)
    @data = data
  end

  def odd
    @data.reject do |el|
      (el % 2 == 0)
    end
  end

  def even
    @data - odd
  end

end


class FooTest < Test::Unit::TestCase

  def setup
    @f = Foo.new([1, 4, 2, 6, 5, 9])
  end

  def test_odd
    assert_equal [1, 5, 9], @f.odd
  end

  def test_even
    assert_equal [4, 2, 6], @f.even
  end
end


#
# data = [1, 4, 2, 6, 5, 9]
#
# f = Foo.new(data)
# f.odd # => [1, 5, 9]
# f.even # => [4, 2, 6]