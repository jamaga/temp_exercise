class Matma

  def initialize(tablica, dzialanie)
    @tablica = tablica
    @dzialanie = dzialanie

    if @tablica.empty?
      raise 'ma nie byc pusta!'
    elsif !@tablica.is_a?(Array) #w tym przypadku
      raise 'ma byc tablica!'
    end
  end

  def results
    if @dzialanie == '+'
     @w = @tablica.inject(:+)
    elsif @dzialanie == '-'
      @w = @tablica.inject(:-)
    end
    @w
  end

end

math1 = Matma.new([2,4], '+')
p math1.results

math2 = Matma.new([2,4], '-')
p math2.results

#math3 = Matma.new([], '+')

math4 = Matma.new('ksks', '+')

#miedzy 25 a 33 - to sa TESTY - testy nam zalatwiaja to i wiecej - np WSZSTKIE LICZBY nie tylko 2 i 4
#KOD ma dzialac a testy sprwdzac czy wynik poprawny

#w inject nie mozemy uzywac dynamicznych metod - am oje dzialanie jest dynamiczym - mozna uzyc inject jak zaztosujemy warunek

# 1. Napisać program który wczytuje dwa parametry:
# - tablice z liczbami,
# - rodzaj dzialania (+ -)
# Program ma miec mozliwosc zwrocenia wyniku z podanego dzialania - na wszystkich elementach tablicy.
#
# np.
# math1 = Math.new([2,4], '+')
# math1.results # => 6
#
# math2 = Math.new([2,4], '-')
# math2.results # => -2
#
# Uwaga! jesli nie podamy zadnych parametrow w tablicy program ma zucic wyjate
# To samo jesli pierwszy parametr nie bedzie tablica!

