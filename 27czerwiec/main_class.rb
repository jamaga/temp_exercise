class Main
  def self.build_string data
    results = []
    data.each_with_index do |array, index_x|
      array = array.take data.first.length
      array.map! &:capitalize if index_x.zero?
      array.each_with_index do |text, index_y|
        results[index_y] = [] if results[index_y].nil?
        results[index_y] << text.to_s
      end
    end

    results.map! do |a|
      a.reject { |c| c.empty? }.join(' ')
    end.join('. ') << '.'
  end
end



class Main

  def self.build_string(source_array)
    result = ''
    result_array = []

    size_of_array = source_array.first.length
    source_array.first.map! { |one_name| one_name.capitalize }

    source_array.each_with_index do |one_array, index_x|
      one_array = one_array.take(size_of_array)

      one_array.each_with_index do |one_word, index_y|
        if result_array[index_y].nil?
          result_array[index_y] = []
        end
        result_array[index_y] << one_word.to_s
      end
    end
    result_array.map! do |one_new_array|
      one_new_array.reject! { |word| word.empty? }
      one_new_array.join(' ')
    end
    result = result_array.join('. ')
    result = result + '.'
    result
  end
end






# [
#     ['ala', 'basia'],
#     ['ma', 'nie ma'],
#     ['kota', 'psa']
# ]
#
# [
#     ['ala', 'ma', 'kota'],
#     ['basia', 'nie ma', 'psa'],
# ]

#
# 1. sprowadź każdą tablicę do odpowiedniej długości
# 2. zamień w pierwszej tablicy imiona by pierwsza litera byla wielka
# 3. pogrupuj wertykalnie wyrazy czyli ['Ala', 'ma', 'kota'], [...]
# 4. usun z pogrupowanej tablicy puste elementy (nil, "")
# 5. zrob join'a na kazdej z podtablic po spacji
# 6. zlacz kazdą tablicę po '. ' i dodaj kropke na koniec.








# class Main
#
#   def self.zamieniaj(nasza_tablica)
#     size = nasza_tablica.first.length
#     p size
#
#     wynik = ''
#
#     tablica_imion = nasza_tablica.first
#     tablica_imion = tablica_imion.map(&:capitalize)
#     p tablica_imion
#     n = 0
#
#     nasza_tablica.each_with_index do |jedna_tablica, index|
#       #p jedna_tablica
#       tablica_pogrupowana = jedna_tablica[index]
#       p tablica_pogrupowana
#
#       #p index
#     end
#
#
#     nasza_tablica.each do |jedna_tablica|
#       #p jedna_tablica
#       #p jedna_tablica
#     end
#
#     wynik
#   end
#
# end





# class Main
#
#   def self.zamieniaj(nasza_tablica)
#     wynik = ''
#
#     nasza_tablica.each_with_index do |jedna_tablica, index|
#       if jedna_tablica[index -1].nil?
#         wynik += ''
#       else
#         wynik += "#{jedna_tablica[index -1]} "
#       end
#     end
#     wynik
#   end
# end



#
# class Main
#
#   def self.zamieniaj(nasza_tablica)
#     wynik = ''
#     string2 = ''
#     string3 = ''
#     nasza_tablica.each do |jedna_tablica|
#       jedna_tablica = jedna_tablica
#
#       wynik += "#{jedna_tablica[0]} "
#
#
#       if jedna_tablica[1].nil?
#         string2 += " "
#       else
#         string2 += jedna_tablica[1]
#       end
#       string2
#
#       if jedna_tablica[2].nil?
#         string3 += " "
#       else
#         string3 += jedna_tablica[2]
#       end
#       string3
#
#     end
#
#     wynik = wynik.split('.').map(&:strip).map(&:capitalize).join('. ') + '.' + ' '
#     string2 = string2.split('.').map(&:strip).map(&:capitalize).join('. ') + '.' + ' '
#     string3 = string3.split('.').map(&:strip).map(&:capitalize).join('. ') + '.'
#
#
#     wynik = wynik + string2 + string3
#
#     # wynik = wynik.split('.').map(&:strip).map(&:capitalize).join('. ') + '.'
#     # wynik = wynik + string2.split('.').map(&:strip).map(&:capitalize).join('. ') + '.'
#     # wynik = wynik + string3.split('.').map(&:strip).map(&:capitalize).join('. ') + '.'
#     wynik
#   end
# end



#p string1
# str2 = ""
# str2 += "#{jedna_tablica[1]}"
# p str2

# str = ""

# jedna_tablica.each { |word| str += "#{word} " }
# p str
#
# wynik = str

# if jedna_tablica[1].nil?
#   jedna_tablica[1] = ""
#   zdanie2 = jedna_tablica[1]
# else
#   zdanie2 += "#{jedna_tablica[1]}"
#   p zdanie2
# end
