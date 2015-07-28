require 'csv'

module App

  class Index

    def initialize(file_name = nil)
      @people_so_far = []
      @import_file_name = file_name
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
        people_to_show << jedna_osoba.full_name
      end
      people_to_show
    end

    def remove(indeks_osoby)
      @people_so_far.delete_at(indeks_osoby - 1)
    end

    def show(indeks_osoby)
      @people_so_far[indeks_osoby - 1].person_details
    end

    def purge
      @people_so_far = []
    end

    def export!
      data = @people_so_far.map do |one_person|
        [one_person.person_name, one_person.person_surname, one_person.person_age]
      end

      CSV.open(@import_file_name, "wb") do |csv|
        csv << ["imie", "nazwisko", "wiek"]
        data.each do |row|
          csv << row
        end
      end
    end

    def import!
      #chcemy miec czysto na poczatku - purge
      purge
      csv_text = CSV.read(@import_file_name, {:headers => true})
      csv_text.each do |jedna_tab|
        add(jedna_tab[0], jedna_tab[1], jedna_tab[2])
      end
    end

  end

  class Person
    attr_accessor :person_name, :person_surname, :person_age

    def full_name
      "#{@person_name} #{@person_surname}"
    end

    def person_details
      "#{@person_name}, #{@person_surname}, #{@person_age}"
    end
  end
end
