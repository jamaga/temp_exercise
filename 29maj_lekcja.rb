require 'test/unit'

class Moo

  def self.sum(data)
    data.select! do |n|
      n.is_a?(Integer) || (n =~ /\A[-+]?[0-9]+\z/)
    end

    data.map do |e|
      e.to_i
    end.inject(:+)
  end

end


class MooTest < Test::Unit::TestCase

  def test_sum
    data = ['Hello', 'World', '!!!', 5, nil, 'Hola', '6']
    assert_equal 11, Moo.sum(data)
  end

  def test_sum2
    data = ['Hello', 'World', '!!!', 5, nil, 'Hola', '6', 0, 'asdsa', 1]
    assert_equal 12, Moo.sum(data)
  end

end


#
# data = ['Hello', 'World', '!!!', 5, nil, 'Hola', '6']
# Moo.sum(data) # => 11
#
# data = ['Hello', 'World', '!!!', 5, nil, 'Hola', '6', 0, 'asdsa', 1]
# Moo.sum(data) # => 12
