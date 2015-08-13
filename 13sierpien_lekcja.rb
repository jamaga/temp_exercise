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
      User.add(@db, user_hash)
      UserDetails.add(user_details_hash)
    end

    # def details(user_username)
    #
    # end
    #
    # def drop(user_username)
    #   @db.query("delete from users where username = '#{user_username}'")
    # end
    #
    # def list
    #   list_array = []
    #   @db.query("select * from users").each do |rez|
    #     list_array << rez[:login]
    #   end
    #   list_array
    # end
  end

  class User

    def self.add(db_connection, data)
      username_to_add = data[:username]
      email_to_add = data[:email]
      status_to_add = data[:status]
      db_connection.query("insert into users (username, email, status) values ('#{username_to_add}',
                                                                        '#{email_to_add}',
                                                                        '#{status_to_add}')")
    end
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

    def add
      username_to_add = user_hash[:username]
      email_to_add = user_hash[:email]
      status_to_add = user_hash[:status]
      @db.query("insert into users (username, email, status) values ('#{username_to_add}',
                                                                        '#{email_to_add}',
                                                                        '#{status_to_add}')")
    end
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