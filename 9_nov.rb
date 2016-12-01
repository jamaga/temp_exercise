
#wylapac wszystkie litery AlA MA KotA

class String

  def change
    self.split(' ').map do |word|
      word[0].capitalize + word[1, word.length - 2] + word[word.length - 1].capitalize
    end.join(' ')
  end
end

s = 'ala ma kota'
puts s.change

# 1. rozbic jeden duzy string (zdanie) na wyrazy -  by znalazly sie w Tablicy
# 2. zamieniam pierwsza i ostatnia litere na Capitalize kazdego wyrazu w tablicy
# 3. caly wyraz biwrzemy i Wysrzucamy z niego pierwsza i ostatnia litere
# 4. do pierwszej zamienionej duzej litery dodajemy Uciety string z Punktu 3go
#    i oddaejemy do tego Ostatnia duza zamieniona litere z punktu 2.
# 5. laczymy przetworzona tablice po spacjach na String



# zadanie:

# zadanie: zrobic tak, by wywolac Nowa instancje klasy - rezultatem wywolania instnacji klasy
# ma byc Do it b
# mamy dwie klasy - musimy dopisac cos do jakiejs klasy i wywolac klase z Metoda

class A
  def do_it
    transform('do it a')
  end

  protected
  def transform(s)
    s.capitalize
  end
end

class B < A
  def do_it
    transform('do it b')
  end
end

b = B.new
p b.do_it

#self sie daje TYLKO jak chce wywolac cos statycznie
# B.do_it   - wtedy mam dac SELF
# jak robie nowa instancje i operuje w RAMACH insyancji - nie daje selfa


