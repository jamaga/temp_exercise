require 'test/unit'
#1
# class Array
#   def transform
#     self.map do |name|
#       {name: name}
#     end
#   end
# end
#
# class FooTest < Test::Unit::TestCase
#   def test_transform_array_to_array_objects
#     assert_equal [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ], ['ala', 'basia', 'kasia'].transform
#   end
# end

# ['ala', 'basia', 'kasia'].transform # => [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ]
# MAPA UZYWAMY jak chcemy przetransformowac tyle elementow na ILU pracujemy!!!

#2
# class Bar
#   def self.transform(data)
#     data.map do |name|
#       {name: name}
#     end
#   end
# end
#
# class FooTest < Test::Unit::TestCase
#   def test_transform_array_to_array_objects
#     assert_equal [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ], Bar.transform(['ala', 'basia', 'kasia'])
#   end
# end

# byl transform a teraz:
# musi przhcodzc przez inna klase
# chcemy wywolywac na innej klasie  Bar.transform([..])    i MA robic DOKLADNIE to samo


# #3
# class Bar
#   def initialize(data)
#     @data = data
#   end
#
#   def transform
#     @data.map do |name|
#       { name: name }
#     end
#   end
# end
#
# class FooTest < Test::Unit::TestCase
#   def test_transform_array_to_array_objects
#     assert_equal [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ], Bar.new(['ala', 'basia', 'kasia']).transform
#   end
# end

# to samo:
# bar = Bar.new(data)
# bar.transform

#4

# 3 metody obecne maja DZIALAC TAK samo bez duplikowania kodu

# class Array
#   def transform
#     self.map do |name|
#       {name: name}
#     end
#   end
# end
#
# class Bar
#   def initialize(data)
#     @data = data
#   end
#
#   def self.transform(data)
#     data.transform
#   end
#
#   def transform
#     @data.transform
#   end
# end
#
# class FooTest < Test::Unit::TestCase
#   def test_transform_array_to_array_objects
#     result = [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ]
#
#     assert_equal result, ['ala', 'basia', 'kasia'].transform
#     assert_equal result, Bar.transform(['ala', 'basia', 'kasia'])
#     assert_equal result, Bar.new(['ala', 'basia', 'kasia']).transform
#   end
# end

#5
#nasza klasa Bar zeby byla
# dodac test ktory bedie robil Dokladnie to samo ale operowal na klasie Foo i KOD ma sie nie duplikowac

class Array
  def transform
    self.map do |name|
      {name: name}
    end
  end
end

class Bar
  def initialize(data)
    @data = data
  end

  def self.transform(data)
    data.transform
  end

  def transform
    @data.transform
  end
end

class Foo < Bar
end

class FooTest < Test::Unit::TestCase

  def setup
    @result = [ { name: 'ala' }, { name: 'basia' }, { name: 'kasia' } ]
  end

  def test_transform_array_to_array_objects
    assert_equal @result, ['ala', 'basia', 'kasia'].transform
    assert_equal @result, Bar.transform(['ala', 'basia', 'kasia'])
    assert_equal @result, Bar.new(['ala', 'basia', 'kasia']).transform
  end

  def test_foo
    assert_equal @result, Foo.transform(['ala', 'basia', 'kasia'])
    assert_equal @result, Foo.new(['ala', 'basia', 'kasia']).transform
  end
end

