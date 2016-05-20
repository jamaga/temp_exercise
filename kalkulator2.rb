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

class KalkulatorDwa

  def wykonaj_dzialanie(jedna_linijka)
    tablica_z_linijki = jedna_linijka.split('|')
    case tablica_z_linijki.first
      when 'dodaj'
        dodaj(tablica_z_linijki[1])
      when 'odejmij'
        odejmij(tablica_z_linijki[1])
      else
        raise 'NIE MA takiego dzialania!!!!'
    end
  end

  def dodaj(tekst_z_liczbami)
    wynik = 0
    tekst_z_liczbami.split(',').each do |jedna_liczba|
      wynik = wynik + jedna_liczba.to_f
    end
    wynik
  end

  def odejmij(tekst_z_liczbami)
    tablica_z_liczbami = tekst_z_liczbami.split(',')
    wynik = tablica_z_liczbami.delete_at(0)
    wynik = wynik.to_f

    tablica_z_liczbami.each do |jedna_liczba|
      wynik = wynik - jedna_liczba.to_f
    end
    wynik
  end

end

k = KalkulatorDwa.new
File.readlines('kalkulator2.txt').each do |line|
  p k.wykonaj_dzialanie(line.chomp)
end

# nowy plik z kalkulator_test.rb - w niego wklejam klase testowa - z require klasy kalkulator
# dodaje nowy plik - np main_kalk.rb - w ktorym jest require klasy kalkulator i to od 57 do 60
# obsluzyc blad - cos innego i DODAC MNOZENIE DZIELENIE- i jak chce program odpalic to main_kalk.rb a testy --> odpalam plik z testami


# class KalkulatorDwaTest < Test::Unit::TestCase
#
#   def test_wykonaj_dzialanie
#     k = KalkulatorDwa.new
#     assert_equal 9, k.wykonaj_dzialanie('dodaj|2,3,4')
#     assert_equal 2, k.wykonaj_dzialanie('odejmij|5,2,1')
#   end
#
#   def test_dodawanie
#     k = KalkulatorDwa.new
#     assert_equal 9, k.dodaj('2,3,4')
#   end
#
#   def test_odejmowanie
#     k = KalkulatorDwa.new
#     assert_equal 2, k.odejmij('5,2,1')
#   end
#
#   def test_bez_dzialania
#     # wyguglowac
#     #assert_raise 'nie zdefiniowane dzialanie!!!'
#   end
#
# end
