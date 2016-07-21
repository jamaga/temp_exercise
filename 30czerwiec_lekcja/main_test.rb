require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_building_string

    assert_equal 'Ania i Basia ma lub nie ma kota lub psa. Tomek i Maciek chce mieć lub nie chce mieć słonia lub kaczkę.', Main.build_string([
      [
          ['ania', 'basia'],
          ['tomek', 'maciek'],
      ], [
          ['ma', 'nie ma'],
          ['chce mieć', 'nie chce mieć'],
      ], [
          ['kota', 'psa'],
          ['słonia', 'kaczkę'],
      ]
   ])


    assert_equal 'Ania i Basia ma lub nie ma kota lub psa.', Main.build_string([
      [
        ['ania', 'basia'],
      ], [
        ['ma', 'nie ma']
      ], [
        ['kota', 'psa']
      ]
    ])



  end
end