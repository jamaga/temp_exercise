class NameSurname

  def initialize
    puts "what's your name?"
    @name = gets.chomp.capitalize

    puts "what's your surname?"
    @surname = gets.chomp.capitalize
  end

  def show_name
    @name
  end

  def show_name_surname
    "#{@name} #{@surname}"
  end

  def show_surname_name
    "#{@surname} #{@name}"
  end

end

ns = NameSurname.new
p ns.show_name
p ns.show_name_surname
p ns.show_surname_name


# napisac program - bez testow
#
# ktory bedzie wczytywac od uzytkownika (w konsoli)
# program imie i nazwisko w 2 osobnych pytaniach
#
# program ma za zadanie - ma miec 3 funkcje ktore
# 1. zwroci samo imie gdzie 1wsza litera bedzie z duzej - uzytkownik moze z malej wpisac
# 2ga - zwroci imie i nazwisko gdzie 1sza litera im i nazwiska ma byc Duza
# 3cia - zamieni kolejnosc nazwiska z imieniem - i tez lietry pierwsze maja byc duze
