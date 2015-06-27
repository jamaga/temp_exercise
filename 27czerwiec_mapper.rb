class MyMapper
  attr_accessor :color, :first_name, :last_name
#data mapper - przyklad prosty
  def color=(color)   #SETTER
    @color = "##{color.downcase}"
  end

  def name=(name)
    full_name = name.split(" ")
    @first_name = full_name[0].capitalize
    @last_name = full_name[1].capitalize
  end
end

m = MyMapper.new
m.color="FFCC00"  #zasetowalismy kolor - przez color=  --wywolanie metody, z komentarzem od 4-6 dziala tylko
# daje w duzych liyterach kolor
m.name="maciej kowalski"

puts m.color
puts m.first_name
puts m.last_name

#
# ➜  katas_and_exercises git:(master) ✗ ruby 27czerwiec_mapper.rb
# #ffcc00
# Maciej
# Kowalski

#zmapowalismy - duze litery, imie nazwisko jako jedna zmienna - nasza aplikacja potrzebuje 2
#kolor - zrobilsmy taki jaki program chcielibysmy miec
#jeden format danych zamienia na drugi
