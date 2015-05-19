require 'test/unit'
require 'fakefs/safe'
require 'yaml'
require './19_maj_stubownie'

class DublersTest < Test::Unit::TestCase

  def setup
    @fixtures = YAML.load_file('./19_maj_fixtures.yml')
    @main = Dublers.new #powinno na url wczytac z 1szego
    #aktywujemy fakefs - do symulowania katalogow systemowych a potem je usuwa
    FakeFS.activate!  #aktywujemy gem
  end

  def teardown #funkcja wykonywana po kazdym tescie
    FakeFS::FileSystem.clear #claerujemy wszystkie stworzone katalogi w pamieci
    FakeFS.deactivate! #dezaktywujemy plugin - sprzatamy po sobie
  end

  #sprawdzamy plik yml - dzialanie fixtur
  def test_valid_url
    #jak sie eachuje to obiekt mial klucz i wartosc
    @fixtures.each do |name, fixture| #name jest po to aby wydobyc fixture
      main = Dublers.new(fixture['url'])  #przekazuje do KONSTRUKTORA
      assert_match /^http(s)?\:\/\//, main.website
    end

    #wyrazenie reg - mowi ze url ^ ma zaczynac sie od http albo https
  end

  def test_file_system
    FileUtils.mkdir("/etc") #tworzymy katalog /etc - teraz dzialamy na fakowych rzeczach fileutils - z gema jest
    File.open("/etc/passwd", "w") do |f| #tworzymy passwd i otwoeramy
      f.puts("andy:*:100:100") #dodajemy dane - przykladowo dwa wpisy
      f.puts("bob:*:101:102")
    end

    #wczytujemy etc/passwd
    #chcemy sprawdzic cos z tego pliku ale nie chcemy fotykac pliku systemowego
    #zrobimy stubowac filesystemu passwd
    #i dodac jakies testowe dane do tego pliku - ma byc uniwersalne etcpasswd u kazdego jest inny
    #operacje jakie robilismy na prawdziwych plikach
    passwd = File.read("/etc/passwd").split("\n").map { |row| row.split(":") }
    assert passwd.include? @main.group
  end

  #sprawdzamy czy firstname nie jest nullem
  #last_name taki sam
  def test_first_name
    assert_not_nil @main.first_name
  end

  def test_last_name
    assert_not_nil @main.last_name
  end

  #test sprawdza czy full_name to zlepek first i last
  def test_full_name
    assert_equal "#{@main.first_name} #{@main.last_name}", @main.full_name
  end

  #faker generuje numer karty inny za kazdym razem
  #sprawdzamy z pomoca regexow czy sa 4 cyfry myslnik i tak 4 razy
  # to samo mozna by  z fiixtorami tylko fixtur maja te same dane a faker za kazdym razem daje inne
  def test_credit_card_no
    assert_match /\d{4}\-\d{4}\-\d{4}\-\d{4}/, @main.credit_card_no
  end

end

#zeby website w klasie dublers byl nieobowiazkowy moze byc moze nie byc  website = nil
#za pomoca petli sprawdzic wszystkie wspisy z fixtur i poprawnosc ich url
#to co mamy tylko w petli