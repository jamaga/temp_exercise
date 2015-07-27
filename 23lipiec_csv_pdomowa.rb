require 'csv'

module App

  class Index

    def initialize
      @people_so_far = []
    end

    def add(name, surname, age)
      person = App::Person.new
      person.person_name = name
      person.person_surname = surname
      person.person_age = age
      @people_so_far << person
    end

    def list
      people_to_show = []
      @people_so_far.each do |jedna_osoba|
        people_to_show << "#{jedna_osoba.person_name} #{jedna_osoba.person_surname}"
      end
      people_to_show
    end

    def remove(indeks_osoby)
      @people_so_far.delete_at(indeks_osoby - 1)
    end

    def show(indeks_osoby)
      found_person = @people_so_far[indeks_osoby - 1]
      "#{found_person.person_name}, #{found_person.person_surname}, #{found_person.person_age}"
    end

    def purge
      @people_so_far = []
    end

    def export
      CSV.open("./23lipiec_csv_pdomowa.csv", "wb") do |csv|
        csv << @people_so_far.map do |one_person|
          [one_person.person_name, one_person.person_surname, one_person.person_age]
        end
      end
    end

    # def export
    #   CSV.open("./23lipiec_csv_pdomowa.csv", "wb") do |csv|
    #     csv << @people_so_far
    #
    #     p csv
    #   end
    # end

    # def export
    #   CSV.open("./23lipiec_csv_pdomowa.csv", "wb") do |csv|
    #     @people_so_far.each do |one_person|
    #       csv << "#{one_person.person_name} #{one_person.person_surname} #{one_person.person_age}"
    #     end
    #   end
    # end

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