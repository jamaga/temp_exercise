module UserApp

  class UsersList

    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
            password: "", database: "ruby")
      end
    end

    def add(user_hash, user_details_hash)

    end

    def details(user_login)

    end

    def remove(user_login)

    end

    def list

    end
  end

  class User
    #dane z tabeli user
    #ma zapisywac user_name- czyli login, email, status
    #oraz ma dodawac - ma miec metode ktora wywola
    # zapis w klasie user_details

    #przyklad:
    #metoda save - wykonuje sqlke ltora zapisuje do tabeli
    #user te danee
    #i wywoluje instancje user_details
    #metda save:
    #d = UserDetails.new(u.details)
    #d.save()
    #save zapisuje dane w tabeli user_details
    #i w user i w userdaetails - metoda SAVE
    ##user - konstruktor w ktorym przekazuje detal edo zapisania -
    #save - wykonuje sqla

    #metoda w user - wyszukiwanie uzytkowniak
    #i usuwanie uzytkownika

    # u = User.new
    # u.login = 'login'
    # u.email = 'email@domain.com'
    # u.status = 1
    # u.details = {....}
    # u.save()
  end

  class UserDetails
    #dane z tabeli user_details

    #rozszezenie klasy user
    #druga tabela

  end
end

# userlist laczy wszystko
# user- klasa odpowiedzialna za zapis odczyt i kasowanie
# i zapis detali uzytkownika
#
# user details - zapisanie tych details