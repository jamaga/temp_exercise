module App

  class Index

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