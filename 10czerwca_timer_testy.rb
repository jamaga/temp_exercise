require 'test/unit'
require './10czerwca_timer'

class InvoicesAppClientTest < Test::Unit::TestCase

  def test_time_string
    requested_time = Timer.new(66)
    assert_equal requested_time.time_string, '00:01:06'
  end

  def test_time_string_large_num
    requested_time = Timer.new(3600)
    assert_equal requested_time.time_string, '01:00:00'
  end

  def test_time_small_zero
    requested_time = Timer.new(0)
    assert_equal requested_time.time_string, '00:00:00'
  end

end