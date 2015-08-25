module TodoListApp

  class ListItem
    #tutaj piszemy sqlki

    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
            password: "", database: "ruby")
      end
    end

    def save(list_item_name, list_item_description, list_item_status)
      @db.query("INSERT INTO todo_lists (name, description, is_active) VALUES ('#{list_item_name}', '#{list_item_description}', #{list_item_status})")
      @db.last_id
    end

  end

  class List < ListItem
    #tutaj mamy metody ale bez squelek

    def add(list_item_name, list_item_description, list_item_status)
      save(list_item_name, list_item_description, list_item_status)
    end

  end

end