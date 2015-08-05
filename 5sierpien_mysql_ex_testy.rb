require 'test/unit'
require './5sierpien_mysql_ex'
require 'mysql2'

class FooTest < Test::Unit::TestCase
  # 1.odpalajac testy - checmy si epodlaczyc do bazy danych
  # 2.stworzyc tabele interesujace nas
  # 3.usunac wszystkie tabele ktore stworzylismy (tak wyglada kazdorazowwo odpalony test)

  #konstruktor moze byc W KAZDEJ KLASIE (nie tylk kod ale i testy - initialize)
  #tutaj go wuzywamy - zeby sie wywolal RAZ dla testow
  # potrzebowalismy metody ktora si euruchomi jeden raz
  # ma parametr - klase po ktorej dziedziczymy - test::unit::testcase - ma parametr
  # super - wywolanie metody z klasy nadrzednej - zeby korzystac z konstruktora testcase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby_tests")
  end

  def setup  #przed kazdym testem
    @db.query("create table users (
              id int(11) not null auto_increment,
              email varchar(255) not null,
              login varchar(255) not null,
              gender varchar(255) not null,
              status smallint(3) not null default 1,
              primary key(id)
              ) engine=InnoDB;")

    # @db.query("create table user_details (
    #           id int(11) not null auto_increment,
    #           user_id int(11) not null,
    #           name varchar(255) not null,
    #           surname varchar(255) not null,
    #           avatar varchar(255) not null,
    #           primary key(id)
    #           ) engine=InnoDB;")
  end

  def teardown
    #jak mamy 10 testow - to za kazdym arzem bedzie - po kazdym tescie wyczysci

  @db.query("drop table users")
   # @db.query("drop table user_details")
  end

  def test_create_new_user
    u = Foo.new(@db)
    id = u.add_user("antek@op.pl", "ant", "male", 3) #dodanie usera zwraca nam id dodanego usera!
    assert_equal ["antek@op.pl", "ant", "male", 3], u.show_user(id)
  end

  #metoda addd_uer dodaje do bazy danych uzytkownika jakiegos
  # w ln 19  - @db.last_id   - ostatnia linijka w met zwraca kod
  # najpierw dodajemy do bazy danych jakis wpis a potem wyciagnelismy id tego ostatniego wpisu
  # dlatego moglismy dodac nowo dodany wpis
  # metoda add users zwraca tego Id - ostatnia linijka

end
