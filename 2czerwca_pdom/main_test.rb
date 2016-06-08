require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_licz
    data = [
        {
            a1: 5,
            a2: 1,
            a3: 2
        },

        15,
        22,

        {
            b1: 2,
            b2: {
                c1: 3,
                c2: [1,2,3],
                c3: 5
            }
        },

        11,

        {
            d1: 1,
            d2: [0],
            d3: {
                e1: 20
            }
        },

        [2,5]
    ]

    assert_equal 100, Main.licz(data)
  end

  def test_licz_zbior
    assert_equal 15, Main.licz_zbior(15)
    assert_equal 7, Main.licz_zbior([2,5])
    assert_equal 8, Main.licz_zbior({:a1=>5, :a2=>1, :a3=>2})
    assert_equal 16, Main.licz_zbior({:b1=>2, :b2=>{:c1=>3, :c2=>[1, 2, 3], :c3=>5}})
    assert_equal 0, Main.licz_zbior(nil)
    assert_equal 0, Main.licz_zbior('string')
  end

end