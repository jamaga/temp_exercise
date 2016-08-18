# class Main
#   def self.transform(data)
#     result = ''
#     data.map!.with_index do |word, index|
#       word = word.capitalize if index == 0 || index == data.length - 1
#       word
#     end
#     result = data.reverse.join(' ') << '.'
#     result
#   end
# end

class Main
  def self.transform(data)
    data.map.with_index do |word, index|
      word.capitalize! if index == 0 || index == data.length - 1
      word
    end.reverse.join(' ') << '.'
  end
end