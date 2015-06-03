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
    clients_nip = Faker::Number.number(10) #MOZE BYC Z KRESKAMI !!!! bo klienci moga podac z kreskami
    c.nip = clients_nip
    assert_equal c.nip, clients_nip
  end
end

  # TESTTOWA KLASA MA BYC DLA PRODUCT!!!!
class InvoicesInvoiceItemsTest < Test::Unit::TestCase

  def test_products_description
    products_decsription = Faker::Hacker.say_something_smart
    c = InvoicesApp::InvoiceItems.new(products_decsription, Faker::Number.digit, Faker::Commerce.price)
    assert_equal c.description, products_decsription
  end

  def test_product_quantity
    products_quantity = Faker::Number.digit
    c = InvoicesApp::InvoiceItems.new(Faker::Hacker.say_something_smart, products_quantity, Faker::Commerce.price)
    assert_equal c.quantity, products_quantity
  end

  def test_products_unit_netto_price
    products_unit_netto_price = Faker::Commerce.price
    c = InvoicesApp::InvoiceItems.new(Faker::Hacker.say_something_smart, Faker::Number.digit, products_unit_netto_price)
    assert_equal c.netto_price, products_unit_netto_price
  end

  # jak beda dwa wpisy na fakturze - zeby to liczyc (moge dopisac kolejne testy
  # gdzie dodam dwa elementy - moge dodac testy)
  # NIE PRODUKT - INOVOICEITEM - bo to nie produkt!
  # zronbic kod invoica - cala faktura moze zwracac TOTAL PRICE, ma zwracac ile jest netto, data zaplaty itp

  def test_total_netto_price
    #quantity x netto price
    prod = InvoicesApp::InvoiceItems.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.total_netto_price, 13.5
  end

  def test_vat_amount
    #vat - 23% x netto price
    prod = InvoicesApp::InvoiceItems.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.vat_amount, 1.04
  end

  def test_brutto_price
    #netto price + vat
    prod = InvoicesApp::InvoiceItems.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.brutto_price, 5.54
  end
end

class InvoicesAppInvoiceTest < Test::Unit::TestCase

end



#   itd itd
# - wczytywać dane klienta tj. firme, imię, nazwisko, adres, nip
#   uzyc fakera
#
# klasa pod klasa albo w innych plikach
# moge klasa pod klasa
# docelowo - w roznych plikach
# to co pisze w testach moze sie zmieniac w klasie
# testy - daje ramy do pisania programu, po testyach klasy moge napisac klase w kodzie