require 'test/unit'
require 'fakefs/safe'
require 'yaml'
require './19maj_homework'

class NamesTest < Test::Unit::TestCase

  def setup
    @fixtures = YAML.load_file('./19maj_homework_fixtures.yml')
    @db_people = Dublers.new
    FakeFS.activate!
  end

  def teardown
    FakeFS::FileSystem.clear
    FakeFS.deactivate!
  end

  def test_first_name
    assert_not_nil @db_people.name
  end

  def test_last_name
    assert_not_nil @db_people.surname
  end

  def test_full_name
    assert_equal "#{@db_people.name} #{@db_people.surname}", @db_people.full_name
  end

  def test_names
    @fixtures.each do |el1, fixture|
      name = Dublers.new(fixture['name'])
      surname = Dublers.new(fixture['surname'])
      p name
      p surname
    end
  end

end
