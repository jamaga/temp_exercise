# s = Search.new(["ala", "alfabet", "anastazja", "beata"])
# p s.find("al")
# => [“ala", "alfabet”]  zawsze tablica jest zwracana

#mamy pelna tablice
#mamy pusta tablice
#podejemy yraz ktorego nie ma w tablicy

class Search

  def initialize(slownik)
    @slownik = slownik
  end

  def find(wyraz)
    @slownik.select { |el_slownika| el_slownika =~ /^#{wyraz}/ }
  end

end


#select zwraca element wedlug warunku bloku!!! zoaczyc dokumentacje
# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]  zwraca tylko
# te liczby ktore spelniaja warunek !!!!!!
