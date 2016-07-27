class Main

  def self.build_array(text)
    text.split('; ').map! do |one_word|
      one_word.downcase.split(', ')
    end
  end
end



# class Main
#
#   def self.build_array(text)
#     words_array = text.split('; ')
#     words_array.map! do |one_word|
#       one_word.downcase!
#       one_word = one_word.split(', ')
#     end
#     words_array
#   end
# end