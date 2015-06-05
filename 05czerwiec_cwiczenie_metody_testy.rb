require 'test/unit'
require './05czerwiec_cwiczenie_metody'

class CarTest < Test::Unit::TestCase

  def test_color_of_car
    assert_equal Car.color, 'red'
  end

  def test_car_name
    assert_equal Car.name, 'bmw'
  end

  def test_jednoidrugietrzecie
    c = Car.new
    c.gas = 4.99  #bo tak mielismy w kodzie zeby to dopisac
    assert_equal c.info, "red bmw 4.99"
  end

end