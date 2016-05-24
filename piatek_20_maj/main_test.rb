require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_licz_success
    assert_equal -33, Main.licz({
      'D': [ 2, 3, 4 ],
      'O': [ 5, 1, 6 ],
      'M': [ 2, -1, 1.5 ]
    })

    #assert_equal 0, Main.licz({ })

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

  def test_dodaj
    assert_equal 9, Main.dodaj([ 2, '3', 4 ])
  end

  def test_odejmij
    assert_equal 2, Main.odejmij([ 5, 0, '3' ])
    #jesli mamy podana wart poczatkowa - wynik to wart poczatkowa
    #jak nie - pierwsza wartosc z tablicy
    assert_equal 1, Main.odejmij([ 5, 1, '3' ], 10)
  end

  def test_mnozenie
    assert_equal 24, Main.mnozenie([ 2, '3', 4])
  end

end

#zakomentowac asercje w jednym tescue ktory nie wypala
# i odkomentowywac