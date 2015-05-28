#jest gem do singletona

class Foo

  def initialize
    p 'init'
    @msg = "hello "
  end

  @@instance = Foo.new

  def self.instance
    @@instance
  end

  def show(name)
   p @msg + name
  end

end

f = Foo.new
f.show('marek')

f = Foo.new
f.show('ewa')

Foo.instance.show('ania')
Foo.instance.show('darek')

#raz zostanie wywolabny konstruktor i juz nie zostanie wywolany
# konstruktow raz na paczatku i instanca jest trzymana
# uzywa sie:
#jesli mamy do otwarcia plik a musimy na nim duzo operowac:
#raz wczytujemy mamy w pamieci i operujemy
#raz sie tworzy instanjce polaczenia z baza danych i sie trzyma - i koniec
# w railsach to jest
#singleton jest trzymany az program sie skonczy
#jak uruchomimy program to zaladajue sie od nowa
