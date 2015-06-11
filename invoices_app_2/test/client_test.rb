require File.dirname(__FILE__) + '/../main'

class ClientTest < Test::Unit::TestCase
  def setup
    @client = InvoicesApp::Client.new
  end

  def test_client_first_name
    name = Faker::Name.first_name
    @client.first_name = name
    assert_equal @client.first_name, name
  end

  def test_client_last_name
    surname = Faker::Name.last_name
    @client.last_name = surname
    assert_equal @client.last_name, surname
  end

  def test_client_city
    city = Faker::Address.city
    @client.city = city
    assert_equal @client.city, city
  end

  def test_client_address
    street_address = Faker::Address.street_address
    @client.address = street_address
    assert_equal @client.address, street_address
  end

  def test_client_house_number
    building_number = Faker::Address.building_number
    @client.house_number = building_number
    assert_equal @client.house_number, building_number
  end

  def test_client_phone
    phone_number = Faker::PhoneNumber.cell_phone
    @client.phone = phone_number
    assert_equal @client.phone, phone_number
  end

  def test_client_nip
    nip = Faker::Number.number(10) #MOZE BYC Z KRESKAMI !!!! bo klienci moga podac z kreskami
    @client.nip = nip
    assert_equal @client.nip, nip
  end
end