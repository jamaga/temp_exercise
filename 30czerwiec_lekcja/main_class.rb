class Main

  def self.build_string(initial_array)
    result = ''
    array_sentence = []

    initial_array.each_with_index do |data_array, index_x|

      data_array.each_with_index do |single_array, index_y|
        if index_x == 0
          single_array.map! { |one_word| one_word.capitalize }
        end
        #jezeli tblica nie istnieje to stworz a jak istnieje to nic nie rob
        array_sentence[index_y] ||= []
        array_sentence[index_y] << single_array
      end
    end
    p array_sentence
    result
  end
end

# [
#     [
#         ['Ania', 'Basia'], ['ma', 'nie ma'], ['kota', 'psa'],
#     ],
#
#     [
#         ['Tomek', 'Maciek'], ['chce mieć', 'nie chce mieć'], ['słonia', 'kaczke'],
#     ]
# ]