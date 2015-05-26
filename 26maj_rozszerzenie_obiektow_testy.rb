# testujemy i klase (2 klasy)
# i pojedynczy item

require 'test/unit'
require './26maj_rozszerzanie_obiektow'

class SuperlistTest < Test::Unit::TestCase

  def test_item_adding_element
    data = ['ALA']
    item = Superlist::Item.new({'name' => 'Ala'})
    assert_equal data, item.element
    #bo mamy attr_reader :element
  end

  def test_adding_2_elements
    #2 elementy i sprawdzic czy lista o to co dodalam
    #item = Superlist::Item.new({'name' => 'Ala'})
    data = [['ALA'], ['AGATA']]
    o = Superlist::List.new
    o.add({'name' => 'Ala'})
    o.add({'name' => 'Agata'})

    assert_equal data, o.list
  end

end



#majac 1 klase mozemy wywolac juz cos z innej
# rozbijamy na 2 klasy - zeby kod byl czytelby i
# zeby klasa Item miala funkcjonalnosc jakas
#tutaj robila upcasa z imienia
# normalnie maja duzo funkcjonalnosci - i w 1 klasie byloby nieczytelne


