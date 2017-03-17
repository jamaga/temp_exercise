require 'test/unit'

# Database.sum('m') #=> 32
# Database.sum('f') #=> 18
# Database.sum #=> 50
#
# Database.avg('m') #=> 10.67
# Database.avg('f') #=> 9
# Database.avg #=> 10


class Database
  def initialize(database)
    @database = database
  end

  def self.get_data
    [
        { name: 'Bartek', age: 17, gender: 'm' },
        { name: 'Ania', age: 15, gender: 'f' },
        { name: 'Basia', age: 3, gender: 'f' },
        { name: 'Wojtek', age: 10, gender: 'm' },
        { name: 'Adrian', age: 5, gender: 'm' },
    ]
  end

  def self.count(l=nil)
    if l.nil?
      self.get_data.map do |one_hash|
        one_hash[:age]
      end.inject(:+)
    else
      ages = self.get_data.select do |one_h|
        l == one_h[:gender]
      end.map do |el|
        el[:age]
      end
      return ages.inject(:+)
    end
  end

  def self.find_gender_members_count(gender=nil)
    if gender.nil?
      self.get_data.count
    else
      self.get_data.select do |one_h|
        gender == one_h[:gender]
      end.count
    end
  end

  def self.sum(l=nil)
    case l
    when 'm'
      self.count(l)
    when 'f'
      self.count(l)
    else
      self.count
    end
  end

  def self.avg(l=nil)
    case l
    when 'm'
      (self.count(l).to_f / self.find_gender_members_count(l)).round(2)
    when 'f'
      (self.count(l).to_f / self.find_gender_members_count(l)).round(2)
    else
      (self.count.to_f / self.find_gender_members_count).round(2)
    end
  end

  #w case - ostatnie linijki finkcji - mamy ich 3 w tym przypadku
  # nie mamy innyhc operacji oprocz casa - wiec wszsytkie sa

end

class DatabaseTest < Test::Unit::TestCase

  def test_sum
    assert_equal 32, Database.sum('m')
    assert_equal 18, Database.sum('f')
    assert_equal 50, Database.sum
  end

  def test_avg
    assert_equal 10.67, Database.avg('m')
    assert_equal 9, Database.avg('f')
    assert_equal 10, Database.avg
  end
end
