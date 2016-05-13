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

# dodaj|2,3,4

# odejmij|5,2,1
# cosinnego|3,2,5


require 'test/unit'

class KaklulatorDwa

  File.read('kalkulator2.txt').split("\n").each do |line|
    wynik = 0
    linijka = line.split('|')

    if linijka[0] == 'dodaj'
      licz_w_arr = linijka[1].split(',')
      licz_w_arr.each do |jedna_liczba|
        wynik = wynik + jedna_liczba.to_i
      end
      p wynik

    elsif linijka[0] == 'odejmij'
      licz_w_arr = linijka[1].split(',')
      licz_w_arr.each do |jedna_liczba|
        licz_w_arr[0]
        wynik = wynik - jedna_liczba.to_i
      end
      p wynik
    else
      raise 'nie zdefiniowane dzialanie!!!'
    end
  end
end


class KalkulatorDwaTest < Test::Unit::TestCase


  def test_dodawanie
    k = KalkulatorDwa.new
    assert_equal 9, k.dodaj('2,3,4')
  end

  def test_odejmowanie
    k = KalkulatorDwa.new
    assert_equal 2, k.odejmij('5,2,1')
  end

  def test_bez_dzialania
    # wyguglowac
    #assert_raise 'nie zdefiniowane dzialanie!!!'
  end

end
