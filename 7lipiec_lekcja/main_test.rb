require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase
  def test_one
    assert_equal 'Alicja Alicja. Basia Basia Basia, Kasia Kasia Kasia.', Main.transform([
      [["alicja"], 2],
      [["basia", "kasia"], 3],
      [["basia", "kasia", "maciek"], 0],
    ])
  end
end