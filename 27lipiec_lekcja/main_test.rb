require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal 'Ala, Basia, Kasia; ma, nie ma; Kota, Psa, Mysz', Main.build_string(
        [
            ["ala", "basia", "kasia"],
            ["ma", "nie ma"],
            ["kota", "psa", "mysz"]
        ])
  end
end
