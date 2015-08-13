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

      if result != nil
        id_we_look_for = result['id']
        status_we_look_for = result['status']
        email_we_look_for = result['email']
        result_from_user_details = @db.query("select * from user_details where id = '#{id_we_look_for}'").first
        first_name_we_look_for = result_from_user_details['first_name']
        last_name_we_look_for = result_from_user_details['last_name']

        "Name: '#{first_name_we_look_for} #{last_name_we_look_for}', Email: '#{email_we_look_for}', Status: #{status_we_look_for}"
      else
        'user does not exist'
      end
    end

    def drop(user_username)
     result = @db.query("delete from users where username = '#{user_username}'")
      if result != nil
        result
      else
        'user does not exist so u cannot remove it'
      end
    end

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
  end

  class UserDetails

    def self.add(db_connection, second_table_data)
      first_name_to_add = second_table_data[:first_name]
      last_name_to_add = second_table_data[:last_name]
      db_connection.query("insert into user_details (first_name, last_name) values ('#{first_name_to_add}',
                                                                        '#{last_name_to_add}')")
    end
  end
end