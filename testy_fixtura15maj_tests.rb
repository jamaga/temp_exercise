require 'test/unit'
require 'json'
require './testy_fixtura15maj'

class FooTest < Test::Unit::TestCase

  def setup
    file = File.read('fixtura_15maj.json')
    fixtures = JSON.parse(file)
    @foo = Foo.new(fixtures)
  end

  def test_get_name
    assert_equal "ala", @foo.get_name(1)
    assert_equal "bartek", @foo.get_name(2)
  end

end