require 'test/unit'
require './16czerwiec_cwiczenie'

class Array
  include Myenumerable
end

class MyenumerableTest < Test::Unit::TestCase
  def test_my_each
    pusta = []
    [2, 5, 7, 4].my_each do |element|
      pusta << element
    end
    assert_equal pusta, [2, 5, 7, 4]
  end

  def test_my_each_with_index
    pusta = []
    [2, 5, 7, 4].my_each_with_index do |element|
      pusta << element
    end
    assert_equal pusta, [2, 5, 7, 4]
  end

  def test_my_select
    tablica = [2, 3, 4, 7, 8]
    tablica2 = tablica.my_select { |elem| elem.even? }
    assert_equal [2, 4, 8], tablica2
  end

  def test_my_all?
    tablica = [2, 5, 7, 1]
    assert_equal false, tablica.my_all? { |elem| elem >= 10 }
  end

  def test_my_any?
    tablica = [2, 5, 7, 1]
    assert_equal true, tablica.my_any? { |elem| elem >= 5 }
  end

  def test_my_none?
    tablica = [2, 5, 7, 1]
    assert_equal true, tablica.my_none? { |elem| elem == 0 }
  end

  def test_my_map
    tablica = [1, 2, 3, 4]
    assert_equal [1, 4, 9, 16], tablica.my_map { |elem| elem*elem }
  end

end

