require 'test/unit'

# class Names
#   def self.transform_a(names, ages)
#     names.map.with_index do |one_name, index_1|
#       [one_name, ages[index_1]]
#     end
#   end
# end

class Names
  def self.transform_a(names, ages)
    result = []
    names.each_with_index do |one_name, index_1|
      result << [one_name, ages[index_1]]
    end
    result
  end

  def self.transform_b(names, ages)
    result = {}

    names.each_with_index do |one_name, index_n|
      result[one_name] = ages[index_n]
    end
    result
  end
end



class NamesTest < Test::Unit::TestCase

  def test_transform_a
    assert_equal [ ["Alicja", 5], ["Anna", 12], ["Basia", 4] ], Names.transform_a(["Alicja", "Anna", "Basia"], [5, 12, 4])

  end

  def test_transform_b
    assert_equal ({ "Alicja" => 5, "Anna" => 12, "Basia" => 4 }), Names.transform_b(["Alicja", "Anna", "Basia"], [5, 12, 4])

  end

end


# Names.transform_b(names, ages) # => { "Alicja" => 5, "Anna" => 12, "Basia" => 4 }


#
# names = ["Alicja", "Anna", "Basia"]
# ages  = [5, 12, 4]
#
# transform_a(names, ages) # => [ ["Alicja", 5], ["Anna", 12], ["Basia", 4] ]

#funkcja initialize wywoluje sie
# kiedy tworzymy instance klasy - czyli .new !!!!