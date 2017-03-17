require 'test/unit'


class My

  def initialize(data)
    @data = data
  end

  def all
    result = []
    @data.each do |key, h|
      result << h[:name]
    end
    result
  end

  def age_avg
    ages = @data.map do |key,h|
      h[:age]
    end
    (ages.inject(:+) / ages.size.to_f).round(2)
  end

  def get(key_name)
    @data[key_name.to_sym]
  end

end


class MyTest < Test::Unit::TestCase

  def test_get
    data = {
        john: {
            name: 'John',
            age: 22
        },

        hanah: {
            name: 'Hanah',
            age: 12,
        },

        charlie: {
            name: 'Charlie',
            age: 25,
        },
    }

    o = My.new(data)
    assert_equal ({ name: 'John', age: 22 }), o.get('john')
  end

  def test_all
    data = {
        john: {
            name: 'John',
            age: 22
        },

        hanah: {
            name: 'Hanah',
            age: 12,
        },

        charlie: {
            name: 'Charlie',
            age: 25,
        },
    }

    o = My.new(data)
    assert_equal ['John', 'Hanah', 'Charlie'], o.all
  end

  def test_age_avg
    data = {
        john: {
            name: 'John',
            age: 22
        },

        hanah: {
            name: 'Hanah',
            age: 12,
        },

        charlie: {
            name: 'Charlie',
            age: 25,
        },
    }

    o = My.new(data)
    assert_equal 19.67, o.age_avg
  end
end
