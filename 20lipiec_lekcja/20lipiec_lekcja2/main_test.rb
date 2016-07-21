require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_one

    assert_equal [
                     ['Ala', 'Kasia', 'Basia'],
                     ['ma', 'nie ma']
                 ], Main.transform(
        [
            ['ala', 'kasia', 'basia'],
            ['ma', 'nie ma']
        ]
    )

  end

end
