require 'test/unit'
require './wyrazy'

class WordsTest < Test::Unit::TestCase

  def setup
    @words = Words.new('wyrazy.txt')
  end

  def test_shortest_word
    assert_equal 'ma', @words.shortest
  end

  def test_how_many_chars
    assert_equal 2, @words.shortest.length
  end

end