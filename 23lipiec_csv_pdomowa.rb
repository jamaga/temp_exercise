module App

  class Index

    #jest kolekcja obiektow typu Person
    def add(name_to_add, surname_to_add, age_to_add )
      CSV.open("./23lipiec_csv_pdomowa.csv", "wb") do |csv|
       csv << [name_to_add, surname_to_add, age_to_add]
      end
    end

    def remove(person_row)
      source = File::open("./23lipiec_csv_pdomowa.csv","r")
      source.each_line do |line, i|
        if i == person_row
          source.delete_at(person_row)
        end
      end

    end
  end

  class Person
    attr_accessor :person_name, :person_surname, :person_age
  end

end

#CSV.open('./23lipiec_csv_pdomowa.csv')

# writing:
#     CSV.open("./23lipiec_csv_pdomowa.csv", "wb") do |csv|
#       csv << ["row", "of", "CSV", "data"]
#       csv << ["another", "row"]
#       # ...
#     end