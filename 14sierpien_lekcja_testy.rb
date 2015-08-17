require 'test/unit'
require './14sierpien_lekcja'
require 'mysql2'

class ForumAppTest < Test::Unit::TestCase

  def initialize(test_case_class)
    super
    @db = Mysql2::Client.new(host: "localhost", username: "root",
        password: "", database: "ruby")
  end

  def setup
    @db.query("create table if not exists forum_sections (
              id int(11) unsigned not null auto_increment,
              name varchar(255) not null,
              headline varchar(255) not null,
              primary key(id)
              ) engine=InnoDB;")

    #jak robie koumne z relacja - tutaj forum_section_id
    #to musi byc TAKA SAMA jak id z tabeli ktorej tyczy se relacja
    #oprocz atrybutu autoincrement

    #unsigned - liczba nie moze byc mniejsza niz zero!!

    @db.query("create table if not exists forum_section_topics (
              id int(11) not null auto_increment,
              forum_section_id int(11) unsigned not null,
              title varchar(255) not null,
              description text,
              primary key(id),
              key(forum_section_id)
              ) engine=InnoDB;")

    @forum = ForumApp::Forum.new("moje forum")
  end

  def teardown
    #najpierw usuwamy tabele ktore sa relacja a potem te tabele od ktorej odchodzi relacja
    @db.query("drop table forum_section_topics")
    @db.query("drop table forum_sections")
  end

  def test_forum_title
    assert_equal "moje forum", @forum.title
  end

  def test_add_section
    #2 asercje  -ma zwracac przy add section - zwracac id dodanej sekcji - pierwszy to 1 , drugi 2
    assert_equal 1, @forum.add_section("Moj temat1", "Mój opis sekcji1")
    assert_equal 2, @forum.add_section("Moj temat2", "Mój opis sekcji2")
    assert_equal ['Moj temat1', 'Moj temat2'], @forum.list_sections
  end

  def test_remove_section
    @forum.add_section("Moj temat1", "Mój opis sekcji1")
    @forum.add_section("Moj temat2", "Mój opis sekcji2")
    @forum.remove_section('Moj temat1')
    assert_equal ['Moj temat2'], @forum.list_sections
  end

  def test_get_section
    @forum.add_section("Moj temat1", "Mój opis sekcji1")
    assert_equal "Nazwa: 'Moj temat1' | Opis: 'Mój opis sekcji1'", @forum.get_section("Moj temat1").details
  end

  def test_add_topic_to_section
    @forum.add_section("Moj temat1", "Mój opis sekcji1")

    @section = @forum.get_section("Moj temat1")
    assert_equal 1, @section.add_topic("Nazwa topicu1", "Opis Topicu1")
    assert_equal 2, @section.add_topic("Nazwa topicu2", "Opis Topicu2")
    assert_equal ["Nazwa topicu1", "Nazwa topicu2"], @section.list_topics
  end

  def test_remove_topic_from_section
    @forum.add_section("Moj temat1", "Mój opis sekcji1")

    @section = @forum.get_section("Moj temat1")
    @section.add_topic("Nazwa topicu1", "Opis Topicu1")
    @section.add_topic("Nazwa topicu2", "Opis Topicu2")
    @section.remove_topic("Nazwa topicu1")
    assert_equal ["Nazwa topicu2"], @section.list_topics
  end

  def test_get_topic
    @forum.add_section("Moj temat1", "Mój opis sekcji1")
    @section = @forum.get_section("Moj temat1")
    @section.add_topic("Nazwa topicu1", "Opis Topicu1")
    assert_equal "Title: Nazwa topicu1 | Opis: Opis Topicu1", @section.get_topic("Nazwa topicu1")
  end
end


#napisac modul ForumApp - w module 3 klasy
#klasa glowna - Forum, klasa z sekcjami forum - ForumSection
# z topicami - ForumTopic
#chcemy miec mozliwosc dodawania forum

# bede miec dwie tabele - forum_sections i forum_section_topics

# tabela forum_sections - kolumny: name, headline

#tabela forum_section_topics  - forum_section_id, title, description
#description - text (bardzo duzo znakow)
#obie tabele maja id   - zaesze sie dodaje na poczatek
    #
    # forum = ForumApp::Forum.new("moje forum")
    # p forum.title # => moje forum
    # forum.addSection("Moj temat1", "Mój opis sekcji1")
    # forum.addSection("Moj temat2", "Mój opis sekcji2")
    # forum.addSection("Moj temat3", "Mój opis sekcji2")
    # p forum.listSections # => ["Moj temat1", "Moj temat2", "Moj temat3"]
    # forum.removeSection("Moj temat2")
    # p forum.listSections # => ["Moj temat1", "Moj temat3"]
    #
    # @section = forum.getSection("Moj temat1")
    # p @section.details # => Nazwa: "Moj temat1" | Opis: "Mój opis sekcji1"
    # @section.addTopic("Nazwa topicu1", "Opis Topicu2")
    # @section.addTopic("Nazwa topicu2", "Opis Topicu2")
    # p @section.listTopics() # => ["Nazwa topicu1", "Nazwa topicu2"]
    #
    # @section.removeTopic("Nazwa topicu1")
    # p @section.listTopics # => ["Nazwa topicu2"]
    # p @section.getTopic("Nazwa topicu2") # => Title: Nazwa topicu2 | Opis: Opis Topicu2