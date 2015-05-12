module AnimalHelpers
  def flying
    'fly'
  end

end

module Mammals
  class Animals
    include AnimalHelpers #od tej pory funkcje z animalhelper beda dostapne w tej klasie!
      def move
        @a = 'can move but not ' << self.flying
      end
    end

end

module NotBirds
  class Dog < Mammals::Animals
    def bark
      'woof'
    end

    def move

      super #oznacza ze korzystamy z tej wyzej
      'dog ' << @a  #super skorzystalo z metody wyzej! a dog z tej co nizej
    end
  end
end

d = NotBirds::Dog.new
p d.bark
p d.move


class Foo
  PI = 3.14 #stala
end

p Foo::PI



#funkcje w modulach to funkcje pomocnicze do klasy gdzie modul jest includowany



 #tak sie wywoluje metody statyczne
#p Dog.move

#metody statyczne - nie potrzeuja do wywolan instancji klasy!
#jesli - chcemy zeby funkcja byla sama sobie - nie korzystala z instncji klasy - ststyczna i mozna ja wywolac
# poza klasa
#jesli chcemy uzyc w metodzie statycznej atrybutow klasy - to by nie wyszlo
#statyczne metody zeby zwrocic cos statycznego
=begin

class A

  def initialize
    @foo = 123
  end

  def instance_method
    @foo
  end

  def self.static_method
    @foo
  end
end

p A.static_method
b = A.new
p b.instance_method
=end

#metoda statyczna - fajna jak nie zalezy od konstruktora
