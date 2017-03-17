require 'test/unit'

data = [
    { name: 'Ania', age: 5, gender: 'f' },
    { name: 'Bartek', age: 3, gender: 'm' },
    { name: 'Alicja', age: 2, gender: 'f' }
]


class DataBase

  def initialize(data)
    @data = data
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


end


# # testy:
# DataBase.find('Ania').name    #=> Ania
# DataBase.find('Ania').age     #=> 5
# DataBase.find('Alcja').name   #=> Alicja
# DataBase.all # => ['Ania', 'Bartek', 'Alicja']



class DataBaseTest < Test::Unit::TestCase

  # def test_find
  #   assert_equal 'Ania', DataBase.find('Ania').name    #=> Ania
  #   assert_equal 5, DataBase.find('Ania').age     #=> 5
  #   assert_equal 'Alicja', DataBase.find('Alcja').name   #=> Alicja
  # end

  def test_all
    assert_equal ['Ania', 'Bartek', 'Alicja'], DataBase.all
  end

end


