require 'test/unit'

class Foo

  def self.sort(data, key, result='name')

    data.sort { |x, y| x[key.to_sym] <=> y[key.to_sym] }.map do |h|
      h[result.to_sym]
    end

  end

  #a = [ "d", "a", "e", "c", "b" ]
  # a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

end


class FooTest < Test::Unit::TestCase

  def test_transform
    data =  [
        { id: 1, name: 'Alicja', age: 4 },
        { id: 3, name: 'Zenon',  age: 1 },
        { id: 2, name: 'Bartek', age: 5 }
    ]

    assert_equal ['Alicja', 'Bartek', 'Zenon'], Foo.sort(data, 'id')
    assert_equal ['Zenon', 'Alicja', 'Bartek'], Foo.sort(data, 'age')

    assert_equal [3, 1, 2], Foo.sort(data, 'age', 'id')
    assert_equal [1, 2, 3], Foo.sort(data, 'id', 'id')
    assert_equal [4, 5, 1], Foo.sort(data, 'id', 'age')
  end


end

# Foo.sort(data, 'age', 'id') # => [3, 1, 2]
# Foo.sort(data, 'id', 'id') # => [1, 2, 3]
# Foo.sort(data, 'id', 'age') # => [4, 5, 1]


# Foo.sort(data, 'id') # => ['Alicja', 'Bartek', 'Zenon']
# Foo.sort(data, 'age') # => ['Zenon', 'Alicja', 'Bartek']
