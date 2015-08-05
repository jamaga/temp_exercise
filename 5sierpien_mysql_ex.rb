require 'mysql2'

class Foo
  #mamy uzytkownika i jego details:
  # mail, login, plec, ma status oraz detale uzytkownika
  # ma pola - imie, nazwisko, avatar  (tabela user_details)

  def initialize(db = nil)
    @db = db  #jezeli mamy polaczenie do bazy danych - uzywaj tego polaczenia
    if @db.nil?
      @db =  Mysql2::Client.new(host: "localhost", username: "root",
              password: "", database: "ruby")
    end
  end

  def add_user(email_to_add, login_to_add, gender_to_add, status_to_add)
    @db.query("insert into users (email, login, gender, status) values ('#{email_to_add}', '#{login_to_add}', '#{gender_to_add}', '#{status_to_add}')")
    #@db.query("SELECT LAST_INSERT_ID() as id").first
    @db.last_id
  end

  def show_user(id_to_show)
    results = @db.query("select * from users where id = '#{id_to_show}'").first
    [results["email"], results["login"],results["gender"], results["status"]]
  end
end




#checmy program ktory dodaje uzytkownikow do bazy


