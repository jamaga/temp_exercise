require 'test/unit'

class Foo
  def self.transform(hash)
    hash[:data].map do |a|
      if a.is_a?(String)
        a.capitalize
      else
        a
      end
    end.join(' ')
  end

  def self.transform!(hash)
    hash[:data].reject! { |el| !el.is_a?(String) || el.empty?}
    hash[:data].map do |a|
      a.capitalize
    end.join(' ')
  end

  def self.transform?(hash)
    self.transform!(hash).split(' ').reverse.join(' ')
  end
end

class FooTest < Test::Unit::TestCase
  def setup
    @a = {
        data: ['hello', 0, 'world', '', '!!!'],
        meta: { }
    }
  end

  def test_transform
    assert_equal 'Hello 0 World  !!!', Foo.transform(@a)
  end

  def test_transform!
    assert_equal 'Hello World !!!', Foo.transform!(@a)
  end

  def test_transform?
    assert_equal '!!! World Hello', Foo.transform?(@a)
  end
end



