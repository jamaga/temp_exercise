require 'test/unit'
require './ex_sroda'

class NumberNameTest < Test::Unit::TestCase

  #nie pisac w testach if
  def test_not_between_0_and_100
    nn = NumberName.new(101, "ala ma kota" )
    assert nn.number < 0 || nn.number > 100

    nn.number = -1
    assert nn.number < 0 || nn.number > 100
  end

  #ten test zalatwia 2 prypadki
  def test_number_between_0_and_100
    nn = NumberName.new(0, "ala ma kota" )
    assert nn.number >= 0 || nn.number <= 100

    nn.number = 99
    assert nn.number >= 0 || nn.number <= 100
  end

  def test_name_chars_length_greater_than_20
    nn = NumberName.new(0, "napisac testy + prog dla klasy ktora przyjmuje w konstruk 2 par" )
    assert nn.name.length > 20

    nn.name = "acccccccc rfrefer rfa"
    assert nn.name.length > 20
  end

  def test_name_chars_length_less_or_equal_than_20
    nn = NumberName.new(0, "napisac ruk 2 par" )
    assert nn.name.length <= 20

    nn.name = ""
    assert nn.name.length <= 20
  end

end


#napisac testy + prog dla klasy ktora przyjmuje w konstruk 2 par
#liczba wieksza od zera, mniejsza od 100
#nazwwa nie wiecej niz 20 znakow




=begin
  def test_number_greater_or_equal_than_zero

  end

  def test_number_less_than_zero

  end

  def test_number_less_or_equal_than_100

  end

  def test_number_greater_than_100

  end
=end

