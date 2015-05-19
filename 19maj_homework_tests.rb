require 'test/unit'
require 'fakefs/safe'
require 'yaml'
require './19maj_homework'

class NamesTest < Test::Unit::TestCase

  def setup
    #@main = Names.new
    @db_people = YAML.load_file('./19maj_homework_fixtures.yml')
    @db_people.each do |sth, fixture|
      @name = Names.new(fixture['name'])
      @surname = Names.new(fixture['surname'])
    end
    @name
    @surname
  end

  def test_first_name
    assert_not_nil @name
  end

  def test_last_name
    assert_not_nil @surname
  end

  def test_full_name
    assert_equal "#{@db_people.person_name} #{@db_people.person_surname}", @db_people.full_name
  end


end
