require 'test/unit'
require 'fakefs/safe'
require 'yaml'
require './19maj_homework'

class NamesTest < Test::Unit::TestCase

  def setup
    db_people = YAML.load_file('19maj_homework_fixtures.yml')
    @tablica_hashy_ppl = []
    db_people.each do |id, fixture|
      @tablica_hashy_ppl << Names.new(fixture['name'],fixture['surname'])
    end
  end

  def test_first_name_and_last_name_not_nil
    @tablica_hashy_ppl.each do |person|
      assert_not_nil person.person_name
      assert_not_nil person.person_surname
      assert_equal "#{person.person_name} #{person.person_surname}", person.full_name
    end
  end

end


#test - sprawdzic dzialanie i uzywac fixtor