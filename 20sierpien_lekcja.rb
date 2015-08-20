module ShopApp

  class Product
    #attr_accessor :id, :name, :price, :description, :is_active


    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby")
      end
    end

    def add(prod_name, prod_price, prod_description, prod_status)
      product = Product.new(@db)
      product.name = prod_name
      product.price = prod_price
      product.description = prod_description
      product.is_active = prod_status
      #product.id = @id
      product.save

      @products << product
      #id
    end

    def save

      #puts @db.query("select * from products").fields
      zapytanie = "insert into products (id, name, price, description, is_active) values ('#{id}'
                                                                          '#{@name}',
                                                                        '#{@price}',
                                                                        '#{@description}'
                                                                        '#{@is_active}')"
      @db.query(zapytanie)
      @db.last_id
    end
  end

  class Shop < Product

    def initialize(db)
      @id = nil
      @db = db
      @products = []
    end

    def add(prod_name, prod_price, prod_description, prod_status)
      Product.save
    end

    def list

    end

    def delete

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
