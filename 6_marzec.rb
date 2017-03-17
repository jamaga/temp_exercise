require 'test/unit'

# class Data
#
#   def self.sum(data)
#     tab = []
#     data.each do |el|
#       if el.is_a?(Hash)
#        tab << el[:value]
#       end
#     end
#     tab.inject(:+)
#   end
# end


class Data

  def self.sum(data)
    result = 0

    data.each do |el|
      if el.is_a?(Hash)
        if el[:value].is_a?(Fixnum)
          result += el[:value]
        elsif el[:value].is_a?(Array)
          result += self.sum(el[:value])
        end
      end
    end
    result
  end
end


# Data.sum(data) #=> 10

class DataTest < Test::Unit::TestCase

  def test_sum
    data = [
        { value: 5 },
        { value: 3 },
        nil,
        { value: 2 },
        {
            value: [
                { value: 3 },
                nil,
                {
                    value: [
                        { value: 2 },
                    ]
                },
                { value: 1 },
            ]
        },
    ]

    assert_equal 16, Data.sum(data)
  end
end









