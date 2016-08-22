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

  def check_files
    p File.exist?(@file_class_name)
    p File.exist?(@file_test_name)

    if File.exist?(@file_class_name) && File.exist?(@file_test_name)
      puts 'Do you want to overwrite files? - Y or N'
      answer = gets.chomp
      if answer == 'Y'
        create_files
      else
        puts 'DONE!'
        return
      end
    end
  end

end
Bootstrap.new   # .new - tworzy nowa instancje - i KONSTRUKTOR SIE ODPALA
