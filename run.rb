#odpalamy run.rb    - i wszystko sie tworzy
#1. ma generowac katalog z dzisiajesza data o ile nie istnieje
#2. ma generowac w tym katalogu main_class.rb i main_test w tym samym katalogu O ILE nie istnieje juz
#3. jezeli istnieja to mam sie zapytac uzytkownika czy je nadpisac czy zostawic - jesli uzytkownik powie zeby nadpisac
#to nadpisuje sie
# a jak zostawic - skonczyc dzialanie programu
# 4. jesli nie bylo pliku to je tworze z zawartoscia taka jak zwykle -- require itp i przykladowa asercja (to co zwykle)
# 5. napisze DONE jak sie wszystko zrobi

require 'date'
class Bootstrap

  DEFAULT_NAME = 'main'

  attr_reader :dir_name, :file_class_name, :file_test_name, :name

  def initialize
    @name = set_name
    @dir_count = 1
    set_dir_name
    @file_class_name = File.join(@dir_name, "#{@name}_class.rb")
    @file_test_name = File.join(@dir_name, "#{@name}_test.rb")

    create_dirs
    check_files
    create_files
    write_in_files
  end

  def set_dir_name
    @dir_name = Date.today.strftime("%d-%m-%Y_#{@dir_count}")
    if Dir.exist?(@dir_name)
      @dir_count += 1
      set_dir_name
    end
  end

  def create_dirs
    Dir.mkdir(@dir_name)
  end

  # def create_dirs
  #   unless Dir.exist?(@dir_name)
  #     Dir.mkdir(@dir_name)
  #   end
  # end

  def create_files
    File.new(@file_class_name, "w+")
    File.new(@file_test_name, "w+")
  end

  def write_in_files
    File.open(@file_class_name, "w") do |l|
      l.puts "class #{@name.classify}\n  def self.transform()\n\n  end\nend"
    end

    File.open(@file_test_name, "w") do |l|
      l.puts "require 'test/unit'\nrequire './#{@name}_class.rb'\n\nclass #{@name.classify}Test < Test::Unit::TestCase\n  def test_one\n\n  end\nend"
    end
  end

  def check_files
    if File.exist?(@file_class_name) && File.exist?(@file_test_name)
      puts 'Do you want to overwrite files? - Y or N'
      answer = gets.chomp
      if answer == 'Y'
        create_files
        write_in_files
      else
        puts 'DONE!'
        return
      end
    end
  end

  def set_name
    if ARGV[0]
      ARGV[0].downcase
    else
      DEFAULT_NAME
    end
  end


end

Bootstrap.new # .new - tworzy nowa instancje - i KONSTRUKTOR SIE ODPALA


# moze dir z numerem 1  2  3 -- bo na lekcji czasem robimy 2 albo 3 zadania i potrzebne jest wiecej


# 1.


#poprawic - nadpisac klasy string
#i dodac metode Classify zeby tworyla nazwe klasy
# zobaczyc jak w railsach dziala i zrobic tak samo (classify klasa railsowa)
#
#
# [06/09/16 09:54:44] Piotr Krajewski: moja_nazwa
# [06/09/16 09:54:49] Piotr Krajewski: MojaNazwa
#
# [06/09/16 09:55:02] Piotr Krajewski: katalog/moja_nazwa
# [06/09/16 09:55:07] Piotr Krajewski: Katalog::MojaNazwa

