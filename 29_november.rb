
#
# class Array
#   def find_by(key_name, search_value)
#     self.map! do |one_arr|
#       one_arr.map do |one_hash|
#         one_hash[key_name.to_sym]
#       end
#     end
#     p self
#   end
# end

#
# data = [
#     { uid: 1, name: 'Ania' },
#     { uid: 2, name: 'Ala' },
#     { uid: 3, name: 'Basia' },
# ]
#
#
# class Array
#   def find_by(search_name, search_value)
#     search_value = [*search_value]
#     self.select! do |one_el|
#
#       #one_el[search_name.to_sym] == search_value
#       #kazdy uid elementu w petli porownujemy do search value  - jak sie zgadza - to nasz szukany element
#       search_value.include?(one_el[search_name.to_sym])
#     end.map do |el|
#       el[:name]
#     end.join(', ')
#
#     #kazdy uid elementu w petli sprawdzamy czy sie zawiera w naszej szukanej tablicy
#
#
#   end
#
# end
#
#
# p data.find_by('uid', [2, 3]) # => 'Ala'
# #jak wystapi wiecej niz 1 znalezione - mozmay dac TABLICE [2,3]  => 'Ala, Basia'

#########



#
# data = [
#     [
#         { uid: 1, name: 'Ania' },
#         { uid: 2, name: 'Ala' },
#         { uid: 3, name: 'Basia' },
#     ],[
#         { uid: 4, name: 'Mirek' },
#         { uid: 5, name: 'Romek' },
#         { uid: 6, name: 'Ada' },
#     ],
# ]
#
#
# class Array
#   def find_by(search_name, search_value)
#     search_value = [search_value].flatten # * - robi nam tablice - podaje wszystkie wartosci jako oddzielne parametry
#     wynik = ''
#     self.each do |one_arr|
#       wynik << one_arr.select do |one_el|
#         search_value.include?(one_el[search_name.to_sym])
#       end.map do |el|
#         el[:name]
#       end.join(', ')
#     end
#     wynik
#   end
# end
#
# # JESLI MAMY EACHA - zawse bedzie zlywynik - each zwraca!!
# # musimy W EACHU zazwycczaj zapisac do zmiennej i ZWROCIC POZA EACHEM (select w eachu nam nie zwracal nic)
# # map zwraca a each nie zwraca!
#
#
# p data.find_by('uid', [2, 3]) # => 'Ala'
#jak wystapi wiecej niz 1 znalezione - mozmay dac TABLICE [2,3]  => 'Ala, Basia'

#p domowa - NIE UZYAAC FLATTEN w 62 linijce a efekt TEN SAM

################
# zadanie:


data = {
    'group1' => [
        { uid: 1, name: 'Ania' },
        { uid: 2, name: 'Ala' },
        { uid: 3, name: 'Basia' },
    ],

    'group2' => [
        { uid: 4, name: 'Mirek' },
        { uid: 5, name: 'Romek' },
        { uid: 6, name: 'Ada' },
    ],
}

# class Hash
#   def find_group_by(value_search, name_search)
#     self.each do |nazwa_grupy, one_array|
#       z = one_array.select do |one_hash|
#         name_search.include?(one_hash[value_search.to_sym])
#       end
#       # p self[nazwa_grupy.to_sym]
#       # p self[nazwa_grupy.to_sym].to_a.any?(z)
#
#     end
#   end
# end


class Hash
  def find_group_by(value_search, name_search)
    result = ''
    self.each do |group_name, group_array_content|
      o = group_array_content.any? do |one_hash|
        one_hash[value_search.to_sym] == name_search
      end
      if o == true
        result = group_name
        break
      end
    end
    result
  end
end

p data.find_group_by('name', 'Romek') #=> 'group2'

# 1. przejsc po hashu zeby dostac nazwe grupy i zawartosc tej grupy (kolekcja - tablica hashy) - each
# 2. przechodze/szukam po arrayu (uzywajac funkcji any)i szukam hasha KTORY bedzie zawieral IMIE ROMEK  - szukamy HAsha ktory BEDZIE SPELNIAL WARUNEK
# %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
# 3. jezeli werunek jest prawdziwy -- przypisac GRUPE do WYNIKU i zastopowac petle
# 4. zwrocic wynik




# moge uzyc selecta ale nie musze
# lepsza jest inna funkcja - any?  - zobaczyc jak dziala any i zrobic
# przed kazda linikja myslec PO CO mi ta linijka  - 4 lnijki max , a i 2 da rade

