require 'test/unit'

class Bar

  def initialize(data)
    @source = data
  end

  def s(is_even)
    t = @source[:data].select do |el|
      w = el[:ix] % 2 != 0
      is_even == true ? !w : w
    end

    t.map do |el|
      el[:id]
    end
  end

  def odd
    s(false)
  end

  def even
    s(true)
  end

end


class BarTest < Test::Unit::TestCase

  def setup
    data = {
        data: [
            { id: 1, ix: 2 },
            { id: 2, ix: 4 },
            { id: 3, ix: 1 },
            { id: 4, ix: 5 },
        ],
        meta: []
    }

    @b = Bar.new(data)
  end

  def test_odd
    assert_equal [3, 4], @b.odd
    assert_equal [3, 4], @b.odd
  end

  def test_even
    assert_equal [1, 2], @b.even
  end

end





# data = {
#     data: [
#         { id: 1, ix: 2 },
#         { id: 2, ix: 4 },
#         { id: 3, ix: 1 },
#         { id: 4, ix: 5 },
#     ],
#     meta: []
# }
#
# b = Bar.new(data)
# b.odd # => [3, 4]
# b.even # => [1, 2]