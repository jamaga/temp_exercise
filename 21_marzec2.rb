require 'test/unit'

class Parser

  def initialize(csv)
    @source_csv = csv
  end

  def all
    result = []
    source = @source_csv.split("\n")
    keys = source[0].downcase.split(';').map(&:to_sym)

    source.each_with_index do |one_set, index_1|
      if index_1 > 0
        values = one_set.split(';')
        row = {}
        keys.each_with_index do |one_k, index2|
          row[one_k] = values[index2]
        end
        result << row
      end
    end
    result
  end

  def ages_avg
    result = all.map do |el|
      el[:age].to_i
    end
    (result.inject(:+) / result.length.to_f).round(2)
  end

  def find(num)
    all.select do |one_h|
      one_h[:id].to_i == num
    end.first
  end

end

# 1. w hashu obecnie w 24 ln hash = {id_key: number_id, name_key: name_value, age_key: age_value}
# zamiast nazwy zmiennnej uzywam symboli

# 2. uproscic - petle   - 2 peta w petli  - najpierw zesplitowac csv   - tam gdzie mam nawiasy [] - wskazuje na iteracje tam



class ParserTest < Test::Unit::TestCase

  def setup
    @p = Parser.new("Id;Name;Age\n1;Ania;5\n2;Basia;3\n3;Bartek;2")
  end

  def test_all
    assert_equal [{id: '1', name: 'Ania', age: '5'},{id: '2', name: 'Basia', age: '3'},{id: '3', name: 'Bartek', age: '2'}], @p.all
  end

  def test_find
    assert_equal ({id: '1', name: 'Ania', age: '5'}), @p.find(1)
  end

  def test_ages_avg
    assert_equal 3.33, @p.ages_avg
  end

end


# jutro 18.00 !!!


