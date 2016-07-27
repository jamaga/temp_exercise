class Main

  def self.build_array(text)
    result = []

    text.split('. ').map.with_index do |str, index|
      result << str.split(' ')
    end
    result
  end
end



#
#
#
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