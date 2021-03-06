require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def setup
    @o = Main.new({
      g1: ['slowo1', 'slowo2', 'slowo3'],
      g2: ['slowo5', 'slowo1', 'slowo6', 'slowo7'],
      g3: ['slowo7', 'slowo5', 'slowo1', 'slowo8', 'slowo1', 'slowo7']
    })
  end

  def test_total
    assert_equal ({
      slowo1: 4,
      slowo2: 1,
      slowo3: 1,
      slowo5: 2,
      slowo6: 1,
      slowo7: 3,
      slowo8: 1
    }), @o.total
  end

  def test_total_group
    assert_equal ({
      g1: {
        slowo1: 1,
        slowo2: 1,
        slowo3: 1
      },
      g2: {
        slowo5: 1,
        slowo1: 1,
        slowo6: 1,
        slowo7: 1
      },
      g3: {
        slowo7: 2,
        slowo5: 1,
        slowo1: 2,
        slowo8: 1
      }
    }), @o.total_group
  end

  def test_licz_slowa
    assert_equal ({
      slowo7: 2,
      slowo5: 1,
      slowo1: 2,
      slowo8: 1
    }), @o.licz_slowa(['slowo7', 'slowo5', 'slowo1', 'slowo8', 'slowo1', 'slowo7'])
  end

  def test_suma_wnikow_w_grupie
    assert_equal ({ g1: 3, g2: 4, g3: 6 }), @o.suma_wynikow_w_grupie
  end

  def test_suma_wynikow
    assert_equal 13, @o.suma_wynikow
  end

  def test_licz_sumy
    assert_equal 6, @o.licz_sumy({
      slowo7: 2,
      slowo5: 1,
      slowo1: 2,
      slowo8: 1
    })
  end

end