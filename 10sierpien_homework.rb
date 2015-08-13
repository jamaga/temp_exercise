class Product

  def initialize(db = nil)
    @db = db
    if @db.nil?
      @db =  Mysql2::Client.new(host: "localhost", username: "root",
          password: "", database: "ruby")
    end
  end

  def add(fruit_name, fruit_price)
    @db.query("insert into products (name, price) values ('#{fruit_name}', '#{fruit_price}')")
  end

  def show(fruit_id_to_show)
    results = @db.query("select * from products where id = '#{fruit_id_to_show}'").first
    #p @db.query("select * from products where id = '#{fruit_id_to_show}'")
    if results != nil
      results["name"] + ': ' + results["price"].to_s
    else
      'Product does not exist!'
    end
  end

  def list
    my_hash = {}
    @db.query("select * from products").each do |rez|
      my_hash.merge!({rez["id"] => rez["name"]})
    end
    my_hash
  end

  def purge #zrobic esqelke z tego?? czysci mi do nila a nie do pustego hasza
    @db.query("truncate products")
  end

  def drop(product_id)
    #pojedyncze uszy - zalatwia ze sie nie wykrzaczy jak sie poda nie numer - np abc
    #ale jak .drop("' or id > 0")    - zle bardzo - usuwa si ewszystkie rekordy z bazy
    @db.query("delete from products where id = '#{product_id}'")
  end
end

