require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_licz_success
    assert_equal 21, Main.licz({
      'D': [ 2, 3, 4 ],
      'O': [ 5, 1, 6 ],
      'M': [ 2, -1, 1.5 ]
    })

    assert_equal 0, Main.licz({ })

    assert_equal -5, Main.licz({
      'O': [ 2, 3, 4 ]
    })

    assert_equal 24, Main.licz({
      'M': [ 2, 3, 4 ]
    })

    assert_equal 0, Main.licz({
      'M': [ 2, 3, 4 ],
      'O': [ 5, 1, 6 ],
      'M': [ 2, 0, 4 ]
    })
  end

  def test_licz_fail
    assert_raise(RuntimeError) { Main.licz('3,2,5') }
    assert_raise(RuntimeError) do
      Main.licz({
        'M': 5
      })
    end
  end

end