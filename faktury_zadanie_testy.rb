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
    assert_equal c.last_name, surname
  end

  def test_client_address_city   #zapytac co z tym adresem http://www.rubydoc.info/github/stympy/faker/master/frames
    address_city = Faker::Address.city
    c = InvoicesApp::Client.new
    c.clients_city = address_city
    assert_equal c.clients_city, address_city
  end

  def test_client_address_street_address
    address_street_name = Faker::Address.street_name
    c = InvoicesApp::Client.new
    c.clients_street = address_street_name
    assert_equal c.clients_street, address_street_name
  end

  def test_client_nip
    clients_nip = Faker::Number.number(10)
    c = InvoicesApp::Client.new
    c.nip = clients_nip
    assert_equal c.nip, clients_nip
  end

  def test_products_description
    products_decsription = Faker::Hacker.say_something_smart
    c = InvoicesApp::Product.new
    c.description = products_decsription
    assert_equal c.description, products_decsription
  end

  def test_product_quantity
    products_quantity = Faker::Number.digit
    c = InvoicesApp::Product.new
    c.quantity = products_quantity
    assert_equal c.quantity, products_quantity
  end

  def test_products_unit_netto_price
    products_unit_netto_price = Faker::Commerce.price
    c = InvoicesApp::Product.new
    c.netto_price = products_unit_netto_price
    assert_equal c.netto_price, products_unit_netto_price
  end

  def test_total_netto_price

  end

  def test_vat_amount

  end

  def test_brutto_price

  end

end




#
#   itd itd
# - wczytywać dane klienta tj. firme, imię, nazwisko, adres, nip
#   uzyc fakera
#
#
# klasa pod klasa albo w innych plikach
# moge klasa pod klasa
# docelowo - w roznych plikach
# to co pisze w testach moze sie zmieniac w klasie
# testy - daje ramy do pisania programu, po testyach klasy moge napisac klase w kodzie