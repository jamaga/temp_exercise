require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_one

    assert_equal "Wiersz 1. = 8 | Wiersz 2. = 6 | Wiersz 3. = 12 | ", Main.transform(
        [
            [2, 5, 1],
            [3, 1, 2],
            [8, 2, 2]
        ]
    )



  end

end