require 'test/unit'
require './faktury_zadanie'
require 'faker'

class InvoicesAppClientTest < Test::Unit::TestCase

  def test_client_first_name
    name = Faker::Name.first_name
    c = InvoicesApp::Client.new
    c.first_name = name
    assert_equal c.first_name, name
  end

  def test_client_last_name
    surname = Faker::Name.last_name
    c = InvoicesApp::Client.new
    c.last_name = surname
    assert_equal c.last_name,surname
  end
   itd itd
  jak skoncze testy KLIENTA to moge napisac klase klienta
  i tak robie z kazda funkcjonalnoscia
end


- wczytywać dane klienta tj. firme, imię, nazwisko, adres, nip
  uzyc fakera


klasa pod klasa albo w innych plikach
moge klasa pod klasa
docelowo - w roznych plikach
to co pisze w testach moze sie zmieniac w klasie
testy - daje ramy do pisania programu, po testyach klasy moge napisac klase w kodzie