class Main

  def self.build_array(text)
    result = []

    text.downcase.split('. ').each_with_index do |paragraph, index_x|
      paragraph.split(' ').each_with_index do |word, index_y|

        result[index_y] = [] if result[index_y].nil?
        result[index_y][index_x] = word
      end
    end

    result.map! do |arr|
      arr.reject { |word| word.empty? }.join(' ')
    end

    result = result.join('. ')

    puts result.inspect

    result
  end
end

# zaden element nie bedzie zmieniony - each
# poto mmamy nowa tablice
# jesli czasem sie zle ukladaja slowa - zazwyczaj problem z INDEXEM


# 1. ['ala ma kota', 'basia nie ma psa', 'kasia mysz']
# 2.[['ala', 'ma', 'kota'], ['aasia', 'niema', 'psa'], ['kasia', 'mysz']]
# 3.[
#     ['ala', 'basia', 'kasia'],
#     ['ma', 'niema'],
#     ['kota', 'psa', 'mysz']
# ]
#
#




# class Main
#
#   def self.build_array(text)
#     result = []
#
#     text.split('. ').map! do |str|
#       result << str.split(' ')
#     end
#     result
#   end
# end