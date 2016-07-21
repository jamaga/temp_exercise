class Main

  def self.build_string(initial_array)
    result = ''
    array_sentence = []
    max_array_length = initial_array[0].max do |tab1, tab2|
      tab1.length <=> tab2.length
    end
    max_array_length = max_array_length.length

    initial_array.each_with_index do |data_array, index_x|
      data_array.each_with_index do |single_array, index_y|
        single_array = single_array.take(max_array_length)
        if index_x == 0
          single_array.map! { |one_word| one_word.capitalize }
        end
        single_array.map!(&:to_s) #zamienia wszsytko na strngi
        single_array.each_with_index do |one_word, index_z|
          array_sentence[index_z] ||= []
          array_sentence[index_z][index_x] ||= []
          array_sentence[index_z][index_x] << one_word
          #index_z - index jednego wyrazu
        end
      end
    end

    result = array_sentence.map do |a|
      a.map.with_index do |b, index|
        b = [] unless b.is_a?(Array)
        if index == 0
          concat_char = ' i '
        else
          concat_char = ' lub '
        end
        b.join(concat_char)
      end.reject { |c| c.empty? }.join(' ')
    end.join('. ') << '.'
    result
  end
end

#
# [["Ala", "Tomek", "są", "parą"], ["Kasia", "Marek", "nie są", "przyjaciółmi"]]
#
# [[["Ala", "Tomek"], ["są"], ["parą"]], [["Kasia", "Marek"], ["nie są"], ["przyjaciółmi"]]]

######## rozwiazanie ############

# class Main
#   def self.build_string data
#     results = []
#
#     max_array_length = data.first.max { |a, b| a.length <=> b.length }.length
#     data.each_with_index do |array, index_x|
#       array.each_with_index do |sub_array, index_y|
#         sub_array = sub_array.take max_array_length
#         sub_array.map! &:capitalize if index_x.zero?
#         sub_array.map! &:to_s
#
#         sub_array.each_with_index do |text, index_z|
#           results[index_z] ||= []
#           results[index_z][index_x] ||= []
#           results[index_z][index_x] << text
#         end
#       end
#     end
#
#     results.map! do |array|
#       array.map!.with_index do |sub_array, index|
#         sub_array = [] unless sub_array.is_a? Array
#         sub_array.join(index.zero? ? ' i ' : ' lub ')
#       end.reject { |e| e.to_s.empty? }.join(' ')
#     end.join('. ') << '.'
#   end
# end
