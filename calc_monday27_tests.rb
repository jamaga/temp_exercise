require 'test/unit'
require './calc_monday27'

class CalcMondayTest < Test::Unit::TestCase


  def setup
    @calc = Calculator.new(5, 6)
  end

  def test_adding
    assert_equal 11, @calc.add
  end

  def test_minus
    assert_equal -1, @calc.sub
  end

  def test_multiply
    assert_equal 30, @calc.multiply
  end

  def test_div
    assert_equal 0.833, @calc.div.round(3)
    assert_raises(Exception) { @calc.y = 0 ; @calc.div} #przypisuje , == sprawdzam
  end

end






=begin
Napisać kalkulator, który wykonuje takie operacje jak: dodawanie, odejmowanie, dzielenie, mnożenie np.UWAGA: mamy uwzględnić wyjątek dzielenia przez 0

calc = Calculator.new(5, 6)
puts calc.add # => 11
puts calc.sub # => -1
puts calc.div # => 0.8333333333
puts calc.multiply # => 30

assert_raises(Exception) { Calc.moja_metoda }

=end

=begin
  1. klasa kalkulator
  2. mam 2 paramatry ktore przekazuje przy tworzeniu
  3. ma dzielenie mnozenie, uwzgledniam wyjatek 0
  4. co z tymi parametrami - dodac - tworzefuncke dodawanie, sprawdzam czy dziala
  podejscie itearacyjne - czesc  dzialajaca i potem dalej tworzymy kolejna

=end

