require 'test/unit'

class Foo
  SOURCE = [ {id: 1, name: 'ala'}, { id: 3, name: 'kasia'}, { id: 20, name: 'bartek'} ].freeze

  def self.find(data)
    SOURCE.select do |h|
      data[:ids].include?(h[:id])
    end.map do |h|
      h[:name]
    end
  end
end

class FooTest < Test::Unit::TestCase

  def test_foo
    a = {
        ids: [1, 5, 20]
    }
    assert_equal ['ala', 'bartek'], Foo.find(a)
  end

end

# a = {
#     ids: [1, 5, 20]
# }
# source = [ {id: 1, name: 'ala'}, { id: 3, name: 'kasia'}, { id: 20, name: 'bartek'} ]
# Foo.find(a) # => ['ala', 'bartek']
