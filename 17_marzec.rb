require 'test/unit'

data = [
    { name: 'Ania', age: 5, gender: 'f' },
    { name: 'Bartek', age: 3, gender: 'm' },
    { name: 'Alicja', age: 2, gender: 'f' }
]

class DataBase
  attr_reader :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def self.get_data
    [
        { name: 'Ania', age: 5, gender: 'f' },
        { name: 'Bartek', age: 3, gender: 'm' },
        { name: 'Alicja', age: 2, gender: 'f' }
    ]
  end

  def self.all
    names_arr = []
    get_data.each do |el|
      names_arr << el[:name]
    end
    names_arr
  end

  def self.find(kid_name)
    found_hash = self.get_data.select do |one_h|
      kid_name == one_h[:name]
    end.first
    new(found_hash[:name], found_hash[:age], found_hash[:gender])
  end
end


# # testy:
# DataBase.find('Ania').name    #=> Ania
# DataBase.find('Ania').age     #=> 5
# DataBase.find('Alcja').name   #=> Alicja
# DataBase.all # => ['Ania', 'Bartek', 'Alicja']

# user = DataBase.find(‘Ania’)
# user.name # => Ania
# user.age    # => 5
# user.gender #=> f



class DataBaseTest < Test::Unit::TestCase

  def test_find
    assert_equal 'Ania', DataBase.find('Ania').name
    assert_equal 5, DataBase.find('Ania').age
    assert_equal 'Alicja', DataBase.find('Alicja').name
  end

  def test_all
    assert_equal ['Ania', 'Bartek', 'Alicja'], DataBase.all
  end

end

