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
    if fruit_id_to_show
      results["name"] + ': ' + results["price"].to_s
    else
      print 'Product does not exist!'
    end
  end

  def list
    my_hash = {}
    @db.query("select * from products").each do |rez|
      my_hash.merge!({rez["id"] => rez["name"]})
    end
    my_hash
  end

end


# def add_user(email_to_add, login_to_add, gender_to_add, status_to_add)
#   @db.query("insert into users (email, login, gender, status) values ('#{email_to_add}', '#{login_to_add}', '#{gender_to_add}', '#{status_to_add}')")
#   #@db.query("SELECT LAST_INSERT_ID() as id").first
#   @db.last_id
# end
#
# def show_user(id_to_show)
#   results = @db.query("select * from users where id = '#{id_to_show}'").first
#   [results["email"], results["login"],results["gender"], results["status"]]
# end