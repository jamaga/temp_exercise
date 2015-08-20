module ShopApp

  class Product

  end

  class Shop < Product

    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby")
      end
    end

    def add

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
