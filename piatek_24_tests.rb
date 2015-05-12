require 'test/unit'
require './piatek_24'

class PercentTest < Test::Unit::TestCase

=begin
  def test_params_does_not_exist
    p = Percent.new
    assert_throws :p
  end
=end

  def test_params_exist_and_is_number
    p = Percent.new(50, 100)
    assert /[0-9]/.match(p.value.to_s)
    assert !(/[^0-9]/.match(p.value.to_s))

    p = Percent.new(50)
    assert /[0-9]/.match(p.value_of.to_s)
    assert !(/[^0-9]/.match(p.value_of.to_s))
    assert_equal p.value_of, 100
  end

  def test_percent_result
    p = Percent.new(50,100)
    assert_equal 50, p.to_p

    p = Percent.new(50,200)
    assert_equal 25 , p.to_p
  end


end










# wczytywac do konstruktora 1 parametr, parametr opcjnalny
#parametrem  - liczba
# ma  moc zamieniac liczbe na rocny i odwrotnie
# 2 funkcje, puts nazwa funkcji - wypisze procent z tej liczby

# jak nic do konstruktora ma zwracac wyjotek
#2 parmatry w konstruktorze  - 2 liczby ile z ilu jak ierwwszy nie bedzie odany - wyjatek, a bez 2go to 100