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

  FILE_CLASS_NAME = 'main_class.rb'
  FILE_TEST_NAME = 'main_test.rb'

  attr_reader :dir_name, :file_class_name, :file_test_name

  def initialize
    @dir_name = Date.today.strftime("%d-%m-%Y")
    @file_class_name = File.join(@dir_name, FILE_CLASS_NAME)
    @file_test_name = File.join(@dir_name, FILE_TEST_NAME)

    create_dirs
    create_files
    check_files
    write_in_files
  end

  def create_dirs
    unless Dir.exist?(@dir_name)
      Dir.mkdir(@dir_name)
    end
  end

  def create_files
    File.new("./#{dir_name}/#{FILE_CLASS_NAME}", "w+")
    File.new("./#{dir_name}/#{FILE_TEST_NAME}", "w+")
  end

  def write_in_files
    File.open("./#{dir_name}/#{FILE_CLASS_NAME}", "w") do |l|
      l.puts "class Main\n  def self.transform()\n\n  end\nend"
    end

    File.open("./#{dir_name}/#{FILE_TEST_NAME}", "w") do |l|
      l.puts "require 'test/unit'\nrequire './main_class.rb'\n\nclass MainTest < Test::Unit::TestCase\n\n  def test_one\n\n\n\n\n  end\nend"
    end
  end

  def check_files
    p File.exist?("./#{dir_name}/#{FILE_CLASS_NAME}")
    p File.exist?("./#{dir_name}/#{FILE_TEST_NAME}")

    if File.exist?("./#{dir_name}/#{FILE_CLASS_NAME}") && File.exist?("./#{dir_name}/#{FILE_TEST_NAME}")
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

    FILE_TEST_NAME.puts("write your stuff here")

    File.open("#{FILE_TEST_NAME}", "w") do |f|
      f.write('jhjjhjhjhj')
    end

  end
end

Bootstrap.new   # .new - tworzy nowa instancje - i KONSTRUKTOR SIE ODPALA


# moze dir z numerem 1  2  3 -- bo na lekcji czasem robimy 2 albo 3 zadania i potrzebne jest wiecej
