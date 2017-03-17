require 'test/unit'
require './main.rb'

class TodoTest < Test::Unit::TestCase

  def test_add
    t = Todo.new
    assert_equal [], t.list
    assert_equal 1, t.add('8:00', 'Zakupy')
    assert_equal [{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}], t.list

    assert_equal 2, t.add('7:00', 'Śniadanie')
    assert_equal [{'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}], t.list
  end

  def test_show
    t = Todo.new
    t.add('8:00', 'Zakupy')
    assert_equal ({'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}), t.show(1)
  end

  def test_remove
    t = Todo.new
    t.add('7:00', 'Śniadanie')
    t.add('8:00', 'Zakupy')
    t.add('9:00', 'Praca')

    assert_equal true, t.remove(2)
    assert_equal [{'id' => 1, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}], t.list
  end

  def test_report
    t = Todo.new
    t.add('7:00', 'Śniadanie')
    t.add('9:00', 'Praca')
    t.add('11:00', 'fryzjer')

    assert_equal "Time,Title\n7:00,Śniadanie\n9:00,Praca\n11:00,fryzjer", t.report
    assert_equal [{'id' => 1, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 2, 'time' => '9:00', 'title' => 'Praca'},{'id' => 3, 'time' => '11:00', 'title' => 'fryzjer'}], t.list
  end

  def test_purge
    t = Todo.new
    t.add('7:00', 'Śniadanie')
    t.add('9:00', 'Praca')
    t.add('11:00', 'fryzjer')

    assert_equal [{'id' => 1, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 2, 'time' => '9:00', 'title' => 'Praca'},{'id' => 3, 'time' => '11:00', 'title' => 'fryzjer'}], t.list

    t.purge
    assert_equal [], t.list
  end

end

#DOKONCZYC PLUS:
#j eszcze jedna funkcja
# purge
# ktora RESETUJE CALA LISTE
# jak mielismy cos w lisice - to po uzyciu funkcji PURGE
# sprawszamy liste i jest pusta - po uzyciu purge





# dopisac metode o nazwie report
# wywolanie powinno zwracac output ktory jest CSVem
#  mamy to ;     assert_equal [{'id' => 1, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}], t.list
# CSVem bedzie dla tego :
# Time,Title;
# 7:00,Śniadanie
# 9:00,Praca
#napisac testy i kod





#
# Napisz klasę, która będzie działała na zasadzie TODO listy.
#     Przykład wywołań poniżej:
#
# t = Todo.new
# t.list # => []
# t.add('8:00', 'Zakupy') # => 1  #oznaczamy nowobudowany hash ktory BEDZIE (w przyszlosci) pierwszy na liscie
# t.list # => [{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}]
# t.add('7:00', 'Śniadanie') # => 2
# t.list # => [{'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}]
# t.add('9:00', 'Praca') # => 3
# t.list # => [{'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}]
# t.show(2) # => {'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'}
# t.remove(2) # => true
# t.list # => [{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}]
#
# Czyli do zrobienia jest klasa Todo, która będzie mieć metody:
#                                                           list, add, show, remove
# Ponadto chciałbym byś zrobiła do tego unit testy (pamiętając o zasadzie że najpierw piszemy testy później kod programu).
#     Zwróć uwagę także na sortowanie listy wg godziny.