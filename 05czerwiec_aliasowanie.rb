class Foo

  def foo_string
    'cos'
  end

  alias :napisz_cos :foo_string #najpierw jak chcemy zeby sie nazywalo potem co aliasujemy
end

f = Foo.new
p f.napisz_cos

#aliasowac moge jak metoda ZOSTALA ZDEFINIOWANA!!!!!
#czesniej aliasowalismy na istniejacyhc metodach
#tutaj stworzylismy nowa metode wiec alias MA BYC PO TEJ METODZIE!!!!!!!

#klasa fixnum to klasa ruby
class Fixnum
  alias_method :plus, :+   #alternatywa dla aliasa ALE Z PRZECINKIEM !!!!!

  def + b
    1.plus self.plus(b)
  end
end

p 2 + 2
# zwraca 5 - stworzylismy nowa metode ktora sie nazywa plus
#mamy 2 - operujemy na fiznum, wywolujemy metode plus i dajemy parametr b czyli 2
#w 22 ln - mamy cyfre 1 i dodajemy slef plus - dodajemy funkcje stattyczna ktora jest w fixnumberze - 2 + 1 + 2 (kod)



class Fixnum
  alias_method :plus, :-  #alternatywa dla aliasa ALE Z PRZECINKIEM !!!!!

  def - b
    2.plus self.plus(b)
  end
end

p 2 - 2  #zwraca 2  !  - dodalismy do calosci jeszcze dwa w tym przykladzie
# w 37 uzywalismy plusa jako minusa
