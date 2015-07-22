#fabryka samochodow - wiele typow samochodow
#fiat vw reno, kazdy ma swoj model
#kazdy model ma rodzaj - hatchback, combi
#napisac program ktory tworzy samochody poprzez fabryke
# jak odpale klase fabryki - chce dodac samochod
#musze okreslic jaki to samochod - fiat ? jaki model - stilo, rodzaj - hatchback
#kady model samoochodu - ma - nazwe i kolor
#modul i 3 klasy
#tworzyc nowe samochody , usuwac stare, liste pokazywac

#przyklady:
#1. ) car = Factory.new(‘fiat’, ‘stilo’, ‘red’, ‘combi’)

#2. car = Factory.new(‘fiat’)
#car.setDetails(‘stilo’, ‘red’, ‘combi’)

#3. car = Factory.new
# car.setModel(‘fiat’)
# car.setDetails(‘stilo’, ‘red’, ‘combi’)

#4. car = Factory.new
# car.setModel(‘fiat’)
# car.setDetails({ ‘group’ => ‘stilo’, ‘color’ =>’‘red’, ‘type’ => ‘combi’})

#5. car.addCar(‘fiat’, { … })
#jak nie podamy parametru w list - to dajemy tylko fiat i audi
#fiat stilo
#audi a3
#jak podamy parametr w list - np fiat - printujemy wszystkie fiaty



require 'test/unit'
require './22lipiec_cwiczenie1'

class CompanyTest < Test::Unit::TestCase

  def test_list_cars
    car = Company::Factory.new
    car.addCar('fiat', {'name' => 'stilo', 'color' => 'red', 'type' => 'combi' })
    car.addCar('fiat', {'name' => 'bravo', 'color' => 'black', 'type' => 'sedan' })
    car.addCar('audi', {'name' => 'a3', 'color' => 'back', 'type' => 'hatchback' })
    assert_equal ['fiat stilo', 'fiat bravo', 'audi a3'], car.list
    assert_equal ['fiat stilo combi', 'fiat bravo sedan'], car.list('fiat')
    assert_equal [], car.list('vw')
  end

  def test_show_car
    car = Company::Factory.new
    car.addCar('fiat', {'name' => 'stilo', 'color' => 'red', 'type' => 'combi' })
    car.addCar('fiat', {'name' => 'bravo', 'color' => 'black', 'type' => 'sedan' })
    car.addCar('audi', {'name' => 'a3', 'color' => 'back', 'type' => 'hatchback' })
    assert_equal 'fiat stilo combi - red', car.show(1)
  end

  def test_remove_car
    car = Company::Factory.new
    car.addCar('fiat', {'name' => 'stilo', 'color' => 'red', 'type' => 'combi' })
    car.addCar('fiat', {'name' => 'bravo', 'color' => 'black', 'type' => 'sedan' })
    car.addCar('audi', {'name' => 'a3', 'color' => 'back', 'type' => 'hatchback' })
    assert_equal ['fiat stilo', 'fiat bravo', 'audi a3'], car.list
    assert_equal ['fiat stilo combi', 'fiat bravo sedan'], car.list('fiat')
    car.remove(1)
    assert_equal ['fiat bravo', 'audi a3'], car.list
    assert_equal ['fiat bravo sedan'], car.list('fiat')
  end

end