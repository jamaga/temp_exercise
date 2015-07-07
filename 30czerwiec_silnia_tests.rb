require 'test/unit'
require './30czerwiec_silnia'

class SilniacwiczenieTest < Test::Unit::TestCase

  def test_silnia
    s = Silniacwiczenie.new
    assert_equal 120, s.silnia(5)
  end

  def test_silnia2
    s = Silniacwiczenie.new
    assert_equal 120, s.silnia2(5)
  end

end