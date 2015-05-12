module AnimalModule
  class Animal
    def does
      @cat_and_dog = 'can bark or meow'
    end
  end

  class Cat < Animal
    def does
    super
      'cat ' << @cat_and_dog
    end
    CAT = 'kotek'
  end

  class Dog < Animal
    def does
      super
      'dog ' << @cat_and_dog
    end
    DOG = 'piesel'
  end
end

d = AnimalModule::Dog.new
p d.does

c = AnimalModule::Cat.new
p c.does




# napisac klase Animal ktora bedzie dzeidziczona przez 2 klasy podrzedne - Cat i Dog
# i kazda z klas Cat Dog ma miec metody wlasne
# ma zwracac
# “dog” << @a
# i’m cat
#  i’m dog
# im ma byc w Animal
# cat w Cat
# dog w Dog
# 3 klasy maja byc zamkniete w modul
# w klasach Cat ma byc konstant(stala) o nazwie cat  w  klasie dog konstant o nazwie dog
#
# poza modulem jak sie ma wywolywac -
# cat = AnimalModule::Cat.new
# cat.get_name # “I’m cat!”
#
# co mam stestowac:
#            1. czy stala jest poprawna
# 2. czy jesli wywolamy klase Cat to poprawnie bedzie im cat - i to samo s dogiem
