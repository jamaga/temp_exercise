require 'test/unit'



class Foo

  def self.sort(data)
    data.sort { |x, y| x[:id] <=> y[:id] }.map do |h|
      h[:name]
    end
  end

  #a = [ "d", "a", "e", "c", "b" ]
  # a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

end


class FooTest < Test::Unit::TestCase

  def test_transform
    data = [ { id: 1, name: 'Alicja' }, { id: 3, name: 'Zenon' }, { id: 2, name: 'Bartek' } ]
    assert_equal ['Alicja', 'Bartek', 'Zenon'], Foo.sort(data)
  end

end



#Foo.sort(data) # => ['Alicja', 'Bartek', 'Zenon']
