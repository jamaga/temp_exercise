require 'minitest/autorun'
require './sorting_balls'

class SortingBallsTest < Minitest::Test

  def test_random_ball
    rack = Rack.new
    assert_equal([], rack.balls)

    rack.add(20)
    assert_equal([ 20 ], rack.balls)

    rack.add(10)
    assert_equal([ 10, 20 ], rack.balls)

    rack.add(30)
    assert_equal([ 10, 20, 30 ], rack.balls)
  end

end




