require 'minitest/autorun'
require './pon'

class PoniedzialekTest < Minitest::Test

  def test_kilo_fail
    w = Waga.new(1)
    assert 2 != w.in_k
  end

  def t_kilo_success
    w = Waga.new(1)
    assert_equal 1, w.in_k
  end

  def t_gram_fail
    w = Waga.new(1)
    assert 2000 != w.in_g
  end

  def t_gram_success
    w = Waga.new(1)
    assert_equal 1000, w.in_g
  end

end




=begin

Napisać klasę Waga, która w konstruktorze przyjmuje jako parametr masę wyrażoną w kilogramach oraz pozwala
na jej odczyt w kilogramach i gramach

Przykład:
    w = Waga.new(1)
w.in_k #=> 1
w.in_g #=> 1000
=end
