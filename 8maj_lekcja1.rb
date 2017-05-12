require 'test/unit'

class Array
  def to_text
    self.select { |w| w.is_a?(String) }.join(' ').capitalize
  end
end

# 1. pozbyc sie rzeczy ktore sa niepotrzebne
# 2. zlaczenie wyrazow po spacji
# 3.zamienic pierwsza litere Stringa na duza


# (1..10).reject { |i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10]
#
# [1, 2, 3, 4, 5].reject { |num| num.even? } #=> [1, 3, 5]



#
# class Array
#   def to_text
#     result = ''
#     self.first.capitalize!
#     self.each do |w|
#       if w.is_a?(String)
#         result << "#{w + ' '}"
#       end
#     end
#     result.strip
#   end
# end

class ArrayTest < Test::Unit::TestCase

  def test_to_text
    assert_equal  'Alicja ma 10 lat', ['alicja', 'ma', nil, '10', 1, 'lat'].to_text
  end

end



# ['alicja', 'ma', nil, '10', 1, 'lat'].to_text # => 'Alicja ma 10 lat'
