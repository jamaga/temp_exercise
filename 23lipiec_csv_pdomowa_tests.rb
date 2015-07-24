require 'test/unit'
require './23lipiec_csv_pdomowa'

class AppTest < Test::Unit::TestCase
  #wyobrazic sobie jakby nie bylo odczytu z pliku
  #robie kod jakby nie bylo zapisu i odczytu w ogole
  #na koncu zrobic odczyt i zapis - jak program bedzie dzialal bez zapisu
  #i odczytu - testy i kod - robie import i export - import latwiejszy
  #kiedys testowalismy yml - udawalismy ze jest na dysku


  def test_adding
    osoba = App::Index.new
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Zbigniew', 'Ekis', 30)
    #o.add('Marek', 'Ygrek', 29)
    osoba.list
    assert_equal ['Andrzej Nowak', 'Zbigniew Ekis'], osoba.list
  end
end
