require 'test/unit'
require './ex_12maj'

class AnimalModuleTest < Test::Unit::TestCase

  def setup
    @kot = AnimalModule::Cat.new
    @pies = AnimalModule::Dog.new
  end

  def test_if_stala_is_correct
    assert_equal 'kotek', AnimalModule::Cat::CAT
    assert_equal 'piesel', AnimalModule::Dog::DOG
  end

  def test_if_sentence_is_correct
    assert_equal 'cat can bark or meow', @kot.does
    assert_equal 'dog can bark or meow', @pies.does
  end

end






# napisac klase Animal ktora bedzie dzeidziczona przez 2 klasy podrzedne - Cat i Dog
# i kazda z klas Cat Dog ma miec metody wlasne
# ma zwracac
# “dog” << @a
# i’m cat
# i’m dog
# im ma byc w Animal
# cat w Cat
# dog w Dog
# 3 klasy maja byc zamkniete w modul
# w klasach Cat ma byc konstant(stala) o nazwie cat  w  klasie dog konstant o nazwie dog
#
# poza modulem jak sie ma wywolywac -
#                             cat = AnimalModule::Cat.new
# cat.get_name # “I’m cat!”
#
# co mam stestowac:
#            1. czy stala jest poprawna
# 2. czy jesli wywolamy klase Cat to poprawnie bedzie im cat - i to samo s dogiem


