require File.dirname(__FILE__) + '/../main'

class SellerTest < Test::Unit::TestCase
  def setup
    @seller = InvoicesApp::Seller.new
  end

  def test_seller_first_name
    name = Faker::Name.first_name
    @seller.first_name = name
    assert_equal @seller.first_name, name
  end

  def test_seller_last_name
    surname = Faker::Name.last_name
    @seller.last_name = surname
    assert_equal @seller.last_name, surname
  end

  def test_seller_city
    city = Faker::Address.city
    @seller.city = city
    assert_equal @seller.city, city
  end

  def test_seller_address
    street_address = Faker::Address.street_address
    @seller.address = street_address
    assert_equal @seller.address, street_address
  end

  def test_seller_house_number
    building_number = Faker::Address.building_number
    @seller.house_number = building_number
    assert_equal @seller.house_number, building_number
  end

  def test_seller_phone
    phone_number = Faker::PhoneNumber.cell_phone
    @seller.phone = phone_number
    assert_equal @seller.phone, phone_number
  end

  def test_seller_nip
    nip = Faker::Number.number(10) #MOZE BYC Z KRESKAMI !!!! bo klienci moga podac z kreskami
    @seller.nip = nip
    assert_equal @seller.nip, nip
  end
end