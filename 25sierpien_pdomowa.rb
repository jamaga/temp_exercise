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

    def update(id_po_ktorym_zmieniam, wartosc_do_zmiany)
      @db.query("UPDATE todo_lists SET is_active = #{wartosc_do_zmiany} WHERE id = '#{id_po_ktorym_zmieniam}'")
      true
    end

    def delete(id_itemu_do_usuniecia)
      @db.query("DELETE FROM todo_lists WHERE id = '#{id_itemu_do_usuniecia}'")
      true
    end

    def show_details(id_to_show_details_from_db)
      @db.query("SELECT * FROM todo_lists WHERE id = '#{id_to_show_details_from_db}'", :symbolize_keys => true).first
    end

    def find_all
      list_items = []
      @db.query("SELECT id, name FROM todo_lists WHERE is_active = 1", :symbolize_keys => true).each do |one_item|
        list_items << one_item
      end
      list_items
    end

  end

  class List < ListItem

    def add(list_item_name, list_item_description, list_item_status)
      save(list_item_name, list_item_description, list_item_status)
    end

    def change_state(id_po_ktorym_zmieniam, wartosc_do_zmiany)
      update(id_po_ktorym_zmieniam, wartosc_do_zmiany)
    end

    def list
      find_all
    end

    def drop(id_itemu_do_usuniecia)
      delete(id_itemu_do_usuniecia)
    end

    def details(id_to_show_details)
      show_details(id_to_show_details)
    end
  end

end