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