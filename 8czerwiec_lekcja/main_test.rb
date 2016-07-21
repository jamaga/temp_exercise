require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal ({
      'hello': 3,
      'bla': 3,
      'sss': 2,
      'fgh': 1,
      'abc': 2
    }),
    Main.licz_slowa([
        'hello',
        ['hello', 'bla', 'sss'],
        ['sss', 'abc', ['fgh', 'abc']],
        ['bla'],
        'hello',
        'bla'
    ])
  end

end
