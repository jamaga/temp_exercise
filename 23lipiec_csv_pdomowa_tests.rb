require 'test/unit'
require './23lipiec_csv_pdomowa'
require 'fakefs/safe'

class AppTest < Test::Unit::TestCase
  #wyobrazic sobie jakby nie bylo odczytu z pliku
  #robie kod jakby nie bylo zapisu i odczytu w ogole
  #na koncu zrobic odczyt i zapis - jak program bedzie dzialal bez zapisu
  #i odczytu - testy i kod - robie import i export - import latwiejszy
  #kiedys testowalismy yml - udawalismy ze jest na dysku

  # def setup
  #   FakeFS.activate!  #aktywujemy gem
  # end
  #
  # def teardown #funkcja wykonywana po kazdym tescie
  #   FakeFS::FileSystem.clear #claerujemy wszystkie stworzone katalogi w pamieci
  #   FakeFS.deactivate! #dezaktywujemy plugin - sprzatamy po sobie
  # end

  def test_import!
    # FileUtils.mkdir("/tmp")
    # FakeFS::File.open("/tmp/23lipiec_csv_pdomowa.csv", "w") do |f|
    #   f.puts("imie,nazwisko,wiek")
    #   f.puts("Andrzej,Nowak,22")
    #   f.puts("Jan,Wiśniewski,54")
    #   f.puts("Wacław,Kowalski,11")
    #end
    osoba = App::Index.new("./23lipiec_csv_pdomowa.csv")
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Jan', 'Wiśniewski', 54)
    osoba.add('Wacław', 'Kowalski', 11)
    osoba.export!
    osoba.import!
    assert_equal ['Andrzej Nowak', 'Jan Wiśniewski', 'Wacław Kowalski'], osoba.list
  end

  def test_export!

    osoba = App::Index.new("./23lipiec_csv_pdomowa.csv")
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Zbigniew', 'Ekis', 30)
    osoba.add('Marek', 'Ygrek', 29)
    osoba.export!


    assert_equal ['Andrzej Nowak', 'Zbigniew Ekis', 'Marek Ygrek'], osoba.list
    assert_equal "imie,nazwisko,wiek\nAndrzej,Nowak,22\nZbigniew,Ekis,30\nMarek,Ygrek,29\n", File.read("./23lipiec_csv_pdomowa.csv")
  end

  def test_add_and_list
  osoba = App::Index.new
  osoba.add('Andrzej', 'Nowak', 22)
  osoba.add('Zbigniew', 'Ekis', 30)
  assert_equal ['Andrzej Nowak', 'Zbigniew Ekis'], osoba.list
  end

  def test_remove
  osoba = App::Index.new
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Zbigniew', 'Ekis', 30)
    osoba.add('Marek', 'Ygrek', 29)
    osoba.remove(3)
    assert_equal ['Andrzej Nowak', 'Zbigniew Ekis'], osoba.list
  end

  def test_show
  osoba = App::Index.new
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Zbigniew', 'Ekis', 30)
    osoba.add('Marek', 'Ygrek', 29)
    assert_equal "Andrzej, Nowak, 22", osoba.show(1)
  end

  def test_purge
  osoba = App::Index.new
    osoba.add('Andrzej', 'Nowak', 22)
    osoba.add('Zbigniew', 'Ekis', 30)
    osoba.add('Marek', 'Ygrek', 29)
    osoba.purge
    assert_equal [], osoba.list
  end
end