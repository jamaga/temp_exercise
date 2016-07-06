class Main

  def self.build_string(initial_array)
    result = ''
    array_sentence = []

    initial_array.each_with_index do |data_array, index_x|
      data_array.each_with_index do |single_array, index_y|
        if index_x == 0
          single_array.map! { |one_word| one_word.capitalize }
        end
        single_array.each_with_index do |one_word, index_z|
          array_sentence[index_z] ||= []
          array_sentence[index_z][index_x] ||= []
          array_sentence[index_z][index_x] << one_word
          #index_z - index jednego wyrazu
        end
      end
    end

    array_sentence.each do |one_array|
      one_array.each_with_index do |one_subarray|
        if one_array
        p one_subarray.join(' i ')


      end

    end

    result
  end
end

# 1.przejsc po calych tablicach - mamy w 21
# 2. przejsc po POdtablicach w ktorej sa ala tomek sa para (po zaglebieniach 2 stopnia)
# (putsy z Inspektem robic)
# 3. wykryc czy moja podtablica jest pierwsza na liscie czy nie
# jezeli jest - to lacznikiem bedzie i , inaczej - lub (pierwsa tablica- tab z Imionami)
# 4. wyrzucic puste wyrazy z moich tablic
# 3 i 4 punkt moga byc pomieszane - zalezy jak zrobie - moze byc wczesniej pozniej
# 5. polaczyc wszystkie zdania kropka spacja
# 6. dodac kropke na koniec
# ~ 6 LINIJEK , MUSZE OBSLUZYC NILE , WART PUSTE I MIEJSCA GDZIE NIE MA TABLIC (JAK ROBIE JOINA  A TO NIE TAB LICA-
# OBSLUZYC TEN RPZYPADEK)



#
#
# [["Ala", "Tomek", "są", "parą"], ["Kasia", "Marek", "nie są", "przyjaciółmi"]]
#
# [[["Ala", "Tomek"], ["są"], ["parą"]], [["Kasia", "Marek"], ["nie są"], ["przyjaciółmi"]]]