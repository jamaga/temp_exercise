# zadanie:
#     - zrobic modul Zoo
# w ktorym sa 2 klasy
# klasa AnimalsGroup - bedzie grupa zwierzat -
# moze byc wiele zwierzat (nasz koszyk)
# klasa Animal - (nasz item)
# - program - zeby mozna bylo wkladac do
# grup zwierzeta i mozna bylo je usuwac
# kolekcja - tablica
# element kolekcji - pojedynczy element

module Zoo

  class AnimalsGroup

    def initialize
      @animals_so_far = []
    end

    def add(animal_to_add, animal_type_to_add = nil)
      animal = Zoo::Animal.new
      animal.animal_name = animal_to_add
      animal.animal_type = animal_type_to_add
      @animals_so_far << animal
    end

    def list(animal_type = nil)
      animals_to_show = []
      if animal_type == nil
        animals_to_show = @animals_so_far.map { |animal| animal.animal_name }
      else
        @animals_so_far.each do |animal|
          if animal.animal_type == animal_type
            animals_to_show << animal.animal_name
          end
        end
      end
      animals_to_show
    end

    def drop(animal_to_delete)
      @animals_so_far.each do |animal|
        if animal_to_delete == animal.animal_name
          @animals_so_far.delete(animal)
          break
        end
      end
    end

  end

  class Animal
    attr_accessor :animal_name, :animal_type
  end

end