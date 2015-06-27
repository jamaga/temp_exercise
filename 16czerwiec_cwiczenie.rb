# [1,2,3,4].my_each{|num|
#   puts num.to_s
# }
# # => 1 2 3 4
#moja funkcja each - rozszerzyc modul enumerable

module Enumerable

  def my_each
   # yield #blok ktory przekazuje!!!!
    for value in self
      yield(value)
    end
    self
  end

  def my_each_with_index
    for n in 0...self.length  #tablica od 0 do tego elementu!!!!
      yield( self[n], n )
    end
  end

  def my_select
    list = []
    self.my_each { |cos| list << cos if yield(cos) }
    list
  end

  #tez ok:
  # def my_all?
  #   self.my_each do |cos|
  #     if !yield(cos)
  #       return false
  #     end
  #   end
  #   return true
  # end

  def my_all?
    self.my_each { |thing| return false unless yield(thing) }
    true
  end

  def my_any?
    self.my_each { |thing| return true if yield(thing) }
  end  #jak nic nie zrobie mam falsa - nie trzeba na koncu - jak nie zwroce true to i tak nieprawda

  def my_none?  #do sprawdzenia!!!! i NAPISAC TESTY DO WSZYSTKICH METOD !
    self.my_all? { |thing| !yield(thing) }
  end

  #map chodzi po kazdym elemencie tablicy
  #mozna uzyc zwyklej pentli aby odwzorowac mapa
  #my map zwraca KOPIE oryginalnej tablicy - chodzi po oryginale,
  #robie co ja chce - yielda
  #i zwraca kopie tablice
  def my_map
    new_array = []
    self.my_each { |value| new_array << yield(value) }
    new_array
  end
  #my_map  - tworzy kopie tablicy bazujac na oryginale - tak jak each
  #wciagamy nowe elementy z bloku z nowej tablicy

  #inject - podobny
  # na tablicy - inject - operuje na obecnym elelemcie ktory jest w petli i cos na nim robi
  def my_inject

  end

end

[4,1,3,2].my_each{|num|
 puts num.to_s
}#.sort  #kro-ka operuje na poprzednim obiekcie!!
#musimu zwrocic obiek t na ktorym chcemy oerowacc

#self - w klasach sie stosuje (uproszczenie)
# nie moge zastosowac each

p "-------------------------------"
%w(kot pies mysz).my_each_with_index{ |item, index|
  puts "#{item} - #{index}"
}

#dopisac dwie funkcje!!!!!!
# .all?   funkcja
# any?
# none?
# dopisac do modulu 3 funkcje - te powyzej
# ktore robia ro samo co orygubaly
# moga dotykac moich funkcji zbudowanych    -no my_each
# nie moge dotykac any non    - ale ze swojej jak zbuduje to moge skorzystac
# co z fakturami    -   co teraz powinnam zrobic - jak nie oisc to pomyskec i zapisac
# zeby wytlumaczyc