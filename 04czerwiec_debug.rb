module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  include Towable

  attr_accessor :color, :model, :year  #year i model moglby byc w attr_reader

  @@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "You new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  def to_s
    "My truck is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.brake(30)
lumina.current_speed
lumina.shut_down
#lumina.gas_mileage(13, 351)  albo usunac self z 41 ! albo dodac jak na dole ln 70
MyCar.gas_mileage(13, 351) # wywolanie metody STATYCZNEJ!
lumina.spray_paint("red")
puts lumina.can_tow?(22)  #podobny
puts lumina


# ---- output -----
# => You push the gas and accelerate 20 mph.
# => You are now going 20 mph.
# => You push the brake and decelerate 30 mph.
# => You are now going -10 mph.
# => Let's park this bad boy!
# => 27 miles per gallon of gas
# => You new red paint job looks great!
# => true
# => My car is a red, 1997, chevy lumina!