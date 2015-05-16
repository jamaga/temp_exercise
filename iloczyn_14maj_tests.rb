require 'test/unit'
require './iloczyn_14maj'

class MultiTest < Test::Unit::TestCase

  def test_all_results
    @multi = Multi.new([1, 5, 2, 8], 2.1)
    assert_equal [2.1, 10.5, 4.2, 16.8], @multi.results
  end


  # def test_correctness_of_results
  #   assert_equal 2.1, (@multi[0][0]) * 2.1
  # end
end



# Napisać program, który bedzie liczył iloczyn liczb w tablicy.
# Program w konstruktorze ma przyjmować dwa parametry:
# 1. tablica z wartościami liczbowymi np. [1,2,6,9,10,55]
# 2. liczba przez, którą będziemy mnożyli każdy parametr z tablicy np. 4.5
#
# Wynikiem działania dla powyższego przykładu ma być tablica z przemnożonymi wartościami
# w tablicy przez drugi parametr (4.5).
#
# multi = Multi.new([1,5,2,8], 2.1)
# multi.results  # => [2.1, 10.5, 4.2, 16.8]
