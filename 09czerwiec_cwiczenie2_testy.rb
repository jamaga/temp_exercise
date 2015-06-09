require 'test/unit'
require './09czerwiec_cwiczenie2'

class SearchTest < Test::Unit::TestCase

  def test_find_when_word_exits
    s = Search.new(["ala", "alfabet", "anastazja", "beata"])
    assert_equal ["ala", "alfabet"], s.find("al")
  end

  def test_find_when_word_doesnt_exist
    s = Search.new(["ala", "alfabet", "anastazja", "beata"])
    assert_equal [], s.find("xe")
  end

  def test_find_dictionary_empty
    s = Search.new([])
    assert_equal [], s.find("po")
  end

  def test_searchng_empty_string
    s = Search.new(["ala", "alfabet", "anastazja", "beata"])
    assert_equal ["ala", "alfabet", "anastazja", "beata"], s.find("")
  end

end