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
end

