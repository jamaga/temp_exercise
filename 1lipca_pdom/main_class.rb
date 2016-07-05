class Main

  def self.build_string(initial_array)
    result = ''

    array_sentence = []

    initial_array.each_with_index do |data_array, index_x|

      data_array.each_with_index do |single_array, index_y|
        if index_x == 0
          single_array.map! { |one_word| p one_word.capitalize }
        end
        array_sentence[index_x] ||= []
        array_sentence[index_x] << single_array
      end
    end
    p array_sentence

    result
  end

end