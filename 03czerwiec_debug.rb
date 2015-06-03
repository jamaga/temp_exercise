module SimpleModule
  def a_method
    puts 'a_method at module'
  end

  def another_mthod(parameter)
    puts "Calling another method with parameter -> #{parameter}"
  end
end

module NextModule
  def next_method
    puts 'NEXT method'
  end
end

module AnotherModule
  include NextModule

  def another_method
    puts 'Calling another method without a parameter'
  end
end

class SimpleClass
  #w simple class potrzebujemy modulu zeby miec anothr_method bez PARAMETRU!  -czyli extent another module!
  include SimpleModule
  include AnotherModule #dolaczyc modul w ktorym jest juz metoda - pytanie czy stattycznie dostapena czy prrzez instancje klasy (metoda klasy)

  def a_method(param = nil)
    puts "a_method at class -> #{param}"
  end
end

instance = SimpleClass.new  #stawiamy nowa instancje
instance.a_method('parameter')
instance.another_method # wysolujemy na instncji klasy !!! #mamy instance- zmienna SimpleClass - wywolujemy another method na SimpleClass
instance.a_method
instance.next_method   # to samo co z ln 28 extend ! (pod Siple class - extend AnotherModule)
# to nie klasa tylko modul z metodami
# Simple class jest rpzypisane do


# ------ OUTPUT ------------------------
# => a_method at class -> parameter
# => Calling another method without a parameter
# => a_method at class ->
# => NEXT method