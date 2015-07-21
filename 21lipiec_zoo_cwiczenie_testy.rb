require 'test/unit'
require './21lipiec_zoo_cwiczenie'

class ZooTest < Test::Unit::TestCase

  def test_add_animal
    animal_group = Zoo::AnimalsGroup.new
    animal_group.add('lion', 'ssak')
    animal_group.add('fish', 'ryba')
    animal_group.add('frog', 'gad')
    assert_equal ['lion', 'fish'], animal_group.list('ssak')
    assert_equal ['frog'], animal_group.list('gad')
  end

  def test_delete_animal
    animal_group = Zoo::AnimalsGroup.new
    animal_group.add('lion')
    animal_group.add('fish')
    animal_group.drop('lion')
    assert_equal ['fish'], animal_group.list
  end

end