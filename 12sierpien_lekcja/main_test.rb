require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase


  def test_one

    assert_equal "one = abc, two = def; three = ghi, four = jkl", Main.transform(
        [
            {
                "one": "abc",
                "two": "def"
            },
            {
                "three": "ghi",
                "four": "jkl"
            },
        ])
  end

end
