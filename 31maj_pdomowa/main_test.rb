require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_licz
    h = {
        g1: {
            s1: [1,5,7,1],
            s2: [2,3,0],
            s3: [9.2],
        },

        g2: [9,1,5],

        g3: {
            s1: [1,4,1],
            s2: [2,3,1],
            s3: [2],
        },
    }

    assert_equal ({
        g1: {
            s1: 14,
            s2: 5,
            s3: 9.2
        },

        g2: 15,

        g3: {
            s1: 6,
            s2: 6,
            s3: 2
        }
    }), Main.licz(h)
  end

  def test_licz2
    h = {
        g1: {
            s1: [1,5,7,1],
            s2: {
                c1: [1,2,3],
                c2: {
                    d1: [3,4,5]
                }
            },
            s3: [9.2],
        }
    }

    assert_equal ({
        g1: {
            s1: 14,
            s2: {
                c1: 6,
                c2: {
                    d1: 12
                }
            },
            s3: 9.2
        }
    }), Main.licz(h)
  end
end