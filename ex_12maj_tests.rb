require 'test/unit'
require './ex_12maj'

class AnimalsTest < Test::Unit::TestCase

  def setup

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


