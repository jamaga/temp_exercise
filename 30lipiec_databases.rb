require 'mysql2'

class Foo

  def initialize
    @db = Mysql2::Client.new(host: "localhost", username: "root", password: "", database: "ruby_lekcje")
  end

  def get_users
    @db.query("SELECT * FROM users").map { |row| row }
  end

  # zeby nie mozna bylo wykrasc danych przez mysql injection - escapujemy dane
  def get_user_by_id(id)
    @db.query("select * from users where id = #{id}").first
  end

  def delete_user(id)
    @db.query("delete from users where id = #{id}")
  end

  def add_user(username_to_add, email_to_add, gender_to_add, status_to_add, role_to_add, created_at_to_add)
    @db.query("insert into users (username, email, gender, status, role, created_at) values(
    '#{username_to_add}', '#{email_to_add}', '#{gender_to_add}', '#{status_to_add}', '#{role_to_add}', '#{created_at_to_add}')")
  end

  def update_user(id, params_to_change)
    sql = ""
    params_to_change.each do |column_name, value|
      sql << ",#{column_name} = '#{value}'"
    end

    @db.query("update users set #{sql[1..-1]} where id = #{id}")
  end
end

f = Foo.new
p f.get_users
f.delete_user(1)
p f.get_user_by_id(1)
#f.add_user('aga', 'a@op.pl', 'female', 2, 3, DateTime.now)
p f.get_users
f.update_user(2, {'username' => 'ppppp', 'email' => 'ppp@wp.pl'})
p f.get_user_by_id(2)