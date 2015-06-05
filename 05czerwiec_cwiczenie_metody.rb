#stworzyc klase Car, ma posiadac 2 metody statyzne - kolor i nazwe bmw i 1 met instancyjna konstruktowa
# i 1 metode ktora zwraca info o samochodzie

class Car
  attr_accessor :gas

  def initialize
  end

  def self.color
    'red'
  end

  def self.name
    'bmw'
  end

  def info
    "#{Car.color} #{Car.name} #{self.gas}"  #self- tyczy sie atrybutow klasy! co mamy reader albo accessor #nie mozna w ruby napisac w srodku self.color i self.name
    #mozna napisac Class.name
    "#{Car.color} #{Car.name} #{@gas}"
  end
end

c = Car.new
c.gas = 4.99 #zminilismy reader na accessor ! w ln5
p c.info

#self - tyczy sie atrybutow przy wywolywaniu
# a self przed nazwa metody - tyczy sie METOD STATYCZNYCH (klasowych)
#self - uzywac jak sie ma attr akcesor albo erader ln 19 - lepiej niz malpa - jak w ln 21