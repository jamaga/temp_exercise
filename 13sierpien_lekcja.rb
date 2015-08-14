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
      usr = User.new(@db)
      usr.username = user_hash[:username]
      usr.email = user_hash[:email]
      usr.status = user_hash[:status]
      #tutaj bedzie caly hasz user details!!!
      usr.details = user_details_hash
      usr.save
    end

    def details(user_username)
      result = @db.query("select status, email, username, first_name, last_name, user_id from users join user_details on users.id = user_details.user_id where username = '#{user_username}'").first

      if result != nil

        "User id: #{result['user_id']}, Name: '#{result['first_name']} #{result['last_name']}', Email: '#{result['email']}', Status: #{result['status']}"
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
    attr_accessor :username, :email, :status, :details

    def initialize(db)
      @db = db
    end

    def save
      @db.query("BEGIN")
      @db.query("insert into users (username, email, status) values ('#{@username}',
                                                                         '#{@email}',
                                                                         '#{@status}')")
      usr_details = UserDetails.new(@db)
      usr_details.user_id = @db.last_id
      usr_details.first_name = @details[:first_name]
      #@details - to jest nasz AKCESOR - stad mozemy uzyc z @ - nasz hasz user_details
      usr_details.last_name = @details[:last_name]
      if usr_details.save
        @db.query("COMMIT")
      else
        @db.query("ROLLBACK")
      end
    end
  end

  class UserDetails
    attr_accessor :user_id, :first_name, :last_name

    def initialize(db)
      @db = db
    end

    def save
      @db.query("insert into user_details (user_id, first_name, last_name) values ('#{@user_id}',
                                                                        '#{@first_name}',
                                                                        '#{@last_name}')")
      true
    end

  end
end