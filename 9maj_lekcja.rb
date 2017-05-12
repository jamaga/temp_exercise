require 'test/unit'

# class Array
#   def pick
#     self.select { |n| n.to_s.include?('3') }
#   end
# end
#
# class ArrayTest < Test::Unit::TestCase
#   def test_pick
#     assert_equal [-3, 3, 13, 23, 30], [*-5..30].pick
#   end
# end

#mamy tablice liczb
#[1,2,3,4,5,6,-5, -6, -2, -7 , 7,8.... 20]
# wyciagnac z tej tablicy liczb - mam zworici spowrotem tblice , liczby ktore maja w sobie liczbe 3 (13, 3, 23, 31)


# class String
#   def count_word(word)
#     self.split(' ').select { |w| w.include?(word) }.size
#   end
# end
#
# class StringTest < Test::Unit::TestCase
#   def test_count_word
#     assert_equal 3, 'ala ala ala kot ola pies'.count_word('ala')
#   end
# end

# chemcy miec funkcje ktora jest wywolywana na stringu
# przyjmujaca 1 argument. Argument mowi nam Jakiego wyrazu szukamy
# funkcja ma zwrocic ilosc wystapien tego wyrazu


class String
  def give_numbers
    self.split(' ').select { |w| w =~ /\A\d+\Z/ }.map &:to_f
  end
end

class StringTest < Test::Unit::TestCase
  def test_give_numbers
    assert_equal [3, 5, 7, 8], 'pies 3 ma 5 lapy 7 osa 8'.give_numbers
  end
end

# mamy string z wyrazami i liczbami i chcemy znalesc Wszystkie liczby z tego stringa
# rezultatem bedzie Tablica znalezionych liczb

