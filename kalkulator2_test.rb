require 'test/unit'
require './kalkulator2.rb'

class KalkulatorDwaTest < Test::Unit::TestCase

  def test_wykonaj_dzialanie
    k = KalkulatorDwa.new
    assert_equal 9, k.wykonaj_dzialanie('dodaj|2,3,4')
    assert_equal 2, k.wykonaj_dzialanie('odejmij|5,2,1')
    assert_equal 30, k.wykonaj_dzialanie('mnoz|5,2,3')
    assert_equal 1.5, k.wykonaj_dzialanie('dziel|9,3,2')
  end

  def test_dodawanie
    k = KalkulatorDwa.new
    assert_equal 9, k.dodaj('2,3,4')
  end

  def test_odejmowanie
    k = KalkulatorDwa.new
    assert_equal 2, k.odejmij('5,2,1')
  end

  def test_mnozenie
    k = KalkulatorDwa.new
    assert_equal 30, k.mnoz('5,2,3')
  end

  def test_dzielenie
    k = KalkulatorDwa.new
    assert_equal 1.5, k.dziel('9,3,2')
  end

  def test_bez_dzialania
    k = KalkulatorDwa.new
    assert_raise(NoMethodError) {k.cosinnego('3,2,5')}
  end

  def test_dzialanie_z_poza_pliku
    k = KalkulatorDwa.new
    assert_raise(NoMethodError) {k.coscos('4,5,6')}
  end

end