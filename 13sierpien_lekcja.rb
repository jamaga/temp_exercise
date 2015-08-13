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
      UserDetails.add(@db, user_details_hash)
    end

    def details(user_username)
      result = @db.query("select * from users where username = '#{user_username}'").first
      p result
      id_we_look_for = result['id']
      p id_we_look_for

      status_we_look_for = result['status']
      p status_we_look_for

      email_we_look_for = result['email']
      p email_we_look_for

      result_from_user_details = @db.query("select * from user_details where id = '#{id_we_look_for}'").first
      p result_from_user_details
    end


    # def show(fruit_id_to_show)
    #   results = @db.query("select * from products where id = '#{fruit_id_to_show}'").first
    #   #p @db.query("select * from products where id = '#{fruit_id_to_show}'")
    #   if results != nil
    #     results["name"] + ': ' + results["price"].to_s
    #   else
    #     'Product does not exist!'
    #   end
    # end

    # def drop(user_username)
    #   @db.query("delete from users where username = '#{user_username}'")
    # end
    #
    def list
      @db.query("select * from users").map { |one_h| one_h['username'] }
    end
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

    def self.add(db_connection, second_table_data)
      first_name_to_add = second_table_data[:first_name]
      last_name_to_add = second_table_data[:last_name]
      db_connection.query("insert into user_details (first_name, last_name) values ('#{first_name_to_add}',
                                                                        '#{last_name_to_add}')")
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