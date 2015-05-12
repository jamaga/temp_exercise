require 'test/unit'
require './ex1_wed29'

class ShopTest < Test::Unit::TestCase

  def setup
    @shop = Shop.new('db29.txt')
  end

  def test_price_checking
    assert_equal 4.5, @shop.find('Banana')
  end

  def tests_list_of_products
    assert_equal Hash[ 'Apple' => 2, 'Banana' => 4.5, 'Avocado' => 6, 'Pear' => 3.85 ], @shop.all
  end

end


#:  to samo co =>

=begin

Napisać program "Shop", który będzie pomocny podczas wyszukiwania produktów w sklepie.
- program ma wczytywać bazę produktów z pliku tekstowego. Format pliku:
Name:"Apple";Price:2|Name:"Banana";Price:4.5|Name:"Avocado";Price:6|Name:"Pear";Price:3.85

- program ma mieć możliwość sprawdzenia ceny produktu
- program ma mieć możliwość zobaczenia listy produktów

np.
shop = Shop.new('database.txt')
puts shop.find('Banana') # => 4.5
puts shop.all # => { Apple: 2, Banana: 4.5 Avocado: 6, Pear: 3.85 }

klasa Shop , wczytuje plik
=end
