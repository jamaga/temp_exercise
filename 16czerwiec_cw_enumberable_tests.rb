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

    #przetsestowac element i INDEX ! kluczem hasza element wartoscia index
    #tablica zawsze element na zerowej pozycji
  def test_my_each_with_index
    pusty = {}
    %w(cat dog wombat).my_each_with_index do |element, index|
      pusty[element] = index
    end
    assert_equal pusty, { 'cat' => 0, 'dog' => 1, 'wombat' => 2 }
  end

    #so sprawdzenia lepiej uzyc ORYGINALNEJ funkcji select
  def test_my_select
    tablica = [2, 3, 4, 7, 8]
    tablica2 = tablica.my_select { |elem| elem.even? }
    assert_equal tablica2, tablica.select { |elem| elem.even? }
  end

  def test_my_all?
    tablica = [2, 5, 7, 1]
    #assert_equal false, tablica.my_all? { |elem| elem >= 10 }
    assert_equal tablica.my_all? { |elem| elem >= 10 }, tablica.all? { |elem| elem >= 10 }
  end

  def test_my_any?
    tablica = [2, 5, 7, 1]
    #assert_equal true, tablica.my_any? { |elem| elem >= 5 }
    assert_equal tablica.my_any? { |elem| elem >= 5 }, tablica.any? { |elem| elem >= 5 }
  end

  def test_my_none?
    tablica = [2, 5, 7, 1]
   # assert_equal true, tablica.my_none? { |elem| elem == 0 }
    assert_equal tablica.my_none? { |elem| elem == 0 }, tablica.none? { |elem| elem == 0 }
  end

  def test_my_map
    tablica = [1, 2, 3, 4]
    #assert_equal [1, 4, 9, 16], tablica.my_map { |elem| elem*elem }
    assert_equal tablica.my_map { |elem| elem*elem }, tablica.map { |elem| elem*elem }
  end

  def test_my_inject
    tablica = [5, 6, 7 ,8, 9, 10]
    assert_equal tablica.my_inject { |sum, n| sum + n },  tablica.inject { |sum, n| sum + n }
    assert_equal tablica.my_inject { |sum, n| sum + n }, 45
  end

end

