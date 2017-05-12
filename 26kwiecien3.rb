require 'test/unit'

class Array
  def reverse_words

    self.map do |word|
      word.reverse
    end
  end

end


class ArrayTest < Test::Unit::TestCase

  def test_reverse
    assert_equal  [ "kenez", "aina", "aga", "ketrab" ], [ "zenek", "ania", "aga", "bartek" ].reverse_words
  end

end


# [ "zenek", "ania", "aga", "bartek" ].reverse_words # => [ "kenez", "aina", "aga", "ketrab" ]