require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_one
    assert_equal 'Ala ma kota. Kasia nie ma psa. Basia cos.', Main.transform(
        [
            ['ala', 'kasia', 'basia'],
            ['ma', 'nie ma'],
            ['kota', 'psa', 'cos']
        ]
    )

  end

end

