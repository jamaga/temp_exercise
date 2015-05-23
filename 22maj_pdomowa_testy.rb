require 'test/unit'
require './22maj_pdomowa'
require 'yaml'

class NameSurnameTest < Test::Unit::TestCase

  def setup
    @fixtury = YAML.load_file('./22maj_pdomowa_fixtures.yml')
  end


  def test_name_surname_big_letters
    @fixtury.each do |id, fixtura|
      name = fixtura['name'].to_s
      surname = fixtura['surname'].to_s
      n = NameSurname.new(name, surname)
      assert_equal n.show_name, name.downcase.capitalize
      assert_equal n.show_name_surname, "#{name.downcase.capitalize} #{surname.downcase.capitalize}"
      assert_equal n.show_surname_name, "#{surname.downcase.capitalize} #{name.downcase.capitalize}"
      assert_match /^[A-Z][a-z]+/, n.show_name
      assert_match /^[A-Z][a-z]+/, n.show_surname
    end
  end

end



#assert match sprawdza czy dany string zawiera sie w regexp !!!!
#pierwszym elemenem ma byc regex a drugi to co sprawdzamy
#nawiaz [  ]   - mowi o zasiegu liter [A-Z], [a-z]+   - jak chcemy zeby do konce litery byly male

