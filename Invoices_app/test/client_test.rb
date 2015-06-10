require 'test/unit'
require './../lib/client' #katalog wyzej ..
require 'faker'

class InvoicesAppClientTest < Test::Unit::TestCase #w kazdym pliku musi byc Class tez

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
