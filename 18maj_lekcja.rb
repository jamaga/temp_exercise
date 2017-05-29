require 'test/unit'

class Foo
  def self.make(arr)
    arr.reverse.join(' ')
  end

  def self.make2(arr)
    arr.map do |h|
      h[:title]
    end.reverse.join(' ')
  end

  def make3(arr)
    arr = arr.reverse
    arr.map do |a|
      a.join(' ')
    end.join(' ')
  end
end

class Bar
  def initialize(a)
    @a = a
  end

  def make
    @a.map do |a|
      a.first
    end.reverse.join(' ')
  end

end

class Bar2
  attr_accessor :data

  def make5
    data.map do |a|
      a.first
    end.reverse.join(' ')
  end
end

class Bar33
  attr_accessor :data

  def transform
    data.reverse!
  end

  def get_transformed_data
    data.join(' ')
  end
end


class FooTest < Test::Unit::TestCase
  def test_foo
    a = ['Hello', 'World', '!!!' ]
    assert_equal '!!! World Hello', Foo.make(a)
  end

  def test_make2
    a = [
        { title: 'Hello', }, { title: 'World' }, { title: '!!!' }
    ]
    assert_equal '!!! World Hello', Foo.make2(a)
  end

  def test_make3
    a = [
        [ 'Hello' ], [ 'World' ], [ '!!!' ]
    ]

    f = Foo.new

    assert_equal '!!! World Hello', f.make3(a)
  end

  def test_make4
    a = [
        [ 'Hello', 'Ala' ], [ 'World', 'Zuza' ], [ '!!!', 'Bartek' ]
    ]

    f = Bar.new(a)

    assert_equal '!!! World Hello', f.make
  end

  def test_make5
    a = [
        [ 'Hello', 'Ala' ], [ 'World', 'Zuza' ], [ '!!!', 'Bartek' ]
    ]

    f = Bar2.new
    f.data = a

    assert_equal '!!! World Hello', f.make5
  end

  def test_trasform_data
    a = [
        'Hello', 'World', '!!!'
    ]

    f = Bar33.new
    f.data = a
    f.transform
    assert_equal '!!! World Hello', f.get_transformed_data
    f.transform
    assert_equal 'Hello World !!!', f.get_transformed_data
  end
end


