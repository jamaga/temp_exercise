# - napisac unit testy
# - napisac klase kalkulator2 ktora bedzie dzialac jak obecna ale liczby beda wczytywane z Pliku
#
# dodaj|2,3,4
# odejmij|5,2,1
#
# ma wyswietlic 2 rezultaty - z dodawania 2 3 4
# i drugi - z odejmowania
#
# ma byc wywolowyna przez nowa instancje - przez new
#
# jesli nie znajdzie dzialania - ma sie wyswietlic blad
# jesli nie bedzie wpisow - ma sie wyswietlic ze nie ma wspisow


class KaklulatorDwa

  File.read('kalkulator2.txt').split("\n").each do |line|
    wynik = 0
    linijka = line.split('|')

    if linijka[0] == 'dodaj'
      licz_w_arr = linijka[1].split(',')
      licz_w_arr.each do |jedna_liczba|
        wynik = wynik + jedna_liczba.to_i
        p wynik
      end

    elsif linijka[0] == 'odejmij'
      licz_w_arr = linijka[1].split(',')
      licz_w_arr.each do |jedna_liczba|
        wynik = wynik - jedna_liczba.to_i
        p wynik
      end
    else
      raise 'nie zdefiniowane dzialanie!!!'
    end
  end
end


class KalkulatorDwaTest < Test::Unit::TestCase

  File.read('kalkulator2.txt').split("\n").each do |line|
    p line
    p 'daddsd'
  end

    def test_dodawanie

  end

  def test_odejmowanie

  end

  def test_bez_dzialania

  end

end
