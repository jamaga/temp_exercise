module ShopApp

  class Product


  end

  class Shop < Product
    def initialize(db = nil)
      @db = db
      if @db.nil?
        @db =  Mysql2::Client.new(host: "localhost", username: "root", password: "", database: "ruby")
      end
    end

    def add(shop_name)
      @db.query("INSERT INTO `shops` (`name`) VALUES ('#{shop_name}')")
      @db.last_id
    end

    def drop(shop_id)
      @db.query("DELETE FROM `shops` WHERE `id` = #{shop_id}")
      true
    end

    def list
      list_of_shops = []
      @db.query("SELECT * FROM `shops`", :symbolize_keys => true).each do |one_shop|
        list_of_shops << one_shop
      end
      list_of_shops
    end

  end
end

#metody ktore bede isala - w KLASIE PRODUCT
# parametry jakie musza byc w testacg a jakie wyciagam w sqlu
# - jak okej to napisac do SHop metode export ktora zapisuje do PLIKU
# tekstowego / csv - wszystkie produkty z wskazanego sklepu
# jak dam export i w parametrach id shop 1 - wyeksportuje do pliku
# w pliku 0 id produktu, title, cena oraz nazwa sklepu (nie id - nazwa)

#moge byctesty poprogramie  - mockowac
#wszystkie w klasi eprodukt metody oprocz export