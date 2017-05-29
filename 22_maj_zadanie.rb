require 'test/unit'

class Bar

  def self.check2(arr)
    # length = arr.length

    arr = arr.group_by do |e|
      e
    end

    arr.map do |k, v|
      {name: k, count: v.length}
    end.sort_by do |a|
      a[:name]
    end
  end

  def self.check(arr)
    h = Hash.new

    arr.each do |name|
      h[name] ||= []
      h[name] << name
    end

    h.map do |k, v|
      {name: k, count: v.length}
    end.sort_by do |a|
      a[:name]
    end

    def self.check!

    end

  end

end

class BarTest < Test::Unit::TestCase

  def test_check
    b = ['Ala', 'Basia', 'Kasia', 'Ania', 'Ala', 'Kasia', 'Mati', 'Ala', 'Ania', 'Ania']

    assert_equal ([
                     { name: 'Ala', count: 3 },
                     { name: 'Ania', count: 3 },
                     { name: 'Basia', count: 1 },
                     { name: 'Kasia', count: 2 },
                     { name: 'Mati', count: 1 },
                 ]), Bar.check(b)
  end

  def test_check!
    b = ['Ala', 'Basia', 'Kasia', 'Ania', 'Ala', 'Kasia', 'Mati', 'Ala', 'Ania']

    assert_equal ['Ala', 'Ania'], Bar.check!
  end

end






# b = ['Ala', 'Basia', 'Kasia', 'Ania', 'Ala', 'Kasia', 'Mati', 'Ala', 'Ania']
#
# Bar.check  # => [
# { name: 'Ala', count: 3 },
#     { name: 'Ania', count: 3 },
#     { name: 'Basia', count: 1 },
#     { name: 'Kasia', count: 2 },
#     { name: 'Mati', count: 1 },
# ]
#
# Bar.check! # => ['Ala', 'Ania']