module ShopApp

  class Product

    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby")
      end
    end

    #tak zrobilismy - musielismy dodac WPIS do bazy - dodajemy wpis do bazy a hash bedzie w LISt metodzie
    def save(prod_name, prod_price, prod_description, prod_status)
      @db.query("INSERT INTO products (name, price, description, is_active) VALUES ('#{prod_name}', '#{prod_price}', '#{prod_description}', #{prod_status})")
      @db.last_id
    end

    def update(id_po_ktorym_zmieniam, wartosc_do_zmiany)
      #id nie zmieniamy - AKTUALIZUJEMY cos z konkretnym id - inna wartosc kolumny - tylko status

      #is active jest cyfra wiec dlatego bez uszu
      @db.query("UPDATE products SET is_active = #{wartosc_do_zmiany} WHERE id = '#{id_po_ktorym_zmieniam}'")
      true
    end

    def delete(id_produktu_do_usuniecia)
      @db.query("DELETE FROM products WHERE id = '#{id_produktu_do_usuniecia}'")
      true
    end

    # :symbolize_keys - robimy to po to aby miec hasha z symbolami ( :nazwa )
    def show_details(id_to_show_details_from_db)
      @db.query("SELECT * FROM products WHERE id = '#{id_to_show_details_from_db}'", :symbolize_keys => true).first
    end

    #tutaj musimy zrobic hash z rzeczy ktore juz mamy w bazie
    # drugi parametr - robi KAZDY ELEMENT OD RAZU NA HASHA
    def find_all
      products = []
      @db.query("SELECT id, name FROM products WHERE is_active = 1", :symbolize_keys => true).each do |prod|
        products << prod
      end
      products
    end
  end

  class Shop < Product

    def add(prod_name, prod_price, prod_description, prod_status)
      save(prod_name, prod_price, prod_description, prod_status)
    end

    def list
      find_all
    end

    def drop(id_produktu_do_usuniecia)
      delete(id_produktu_do_usuniecia)
    end

    def change_state(id_po_ktorym_zmieniam, wartosc_do_zmiany)
      update(id_po_ktorym_zmieniam, wartosc_do_zmiany)
    end

    def details(id_to_show_details)
      show_details(id_to_show_details)
    end
  end

end

#wszystkie metody zwiazane z wyciaganiem dodawaniem
#zmiana statusu
#maja byc  w kasie product - czyli wszystkie operacje na tabeli w klasie Product

#shop ma byc posrednikiem (metody add, delete)  - ma WYWOLYWAC KLASE PRODUCT STAMTAD

#wszystkie metody - nie tworzyc nowej instancji klasy product
# tylkoe wywolywac z klasy product - bedzie dziedziczenie
# nie bedzie product.new tylko wywolac metode z klasy Product
