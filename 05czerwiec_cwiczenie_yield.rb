def wrap_in_tags(tag, text)
  html = "<#{tag}>#{text}</#{tag}>"
  yield html
end

wrap_in_tags("title", "Hello") { |html| puts html }

class C

  def temp_chart(temps)
    for temp in temps
      converted = yield(temp)
      puts "#{temp}\t#{converted}"
    end
  end
end

celsiuses = [0,10,20,40]

c = C.new
c.temp_chart(celsiuses) {|cel| cel * 9 / 5 + 32 }
#przekazujemy tablice do parametru
#i w bloku robimy liczenie
#jak chcemy liczyc inaczej - zmieniamy w BLOKU tylko
c.temp_chart(celsiuses) {|cel| cel * 9 / 5 + 100 }
#
# wyswiwtla tak - tylko w bloku zmieniamy logike
# 0	32
# 10	50
# 20	68
# 40	104
# 0	100
# 10	118
# 20	136
# 40	172


#nasz yiled - mamy temperaury ktore przekazujemy do funkcji temp_chart
# w bloku wyiczamy jak temeratura ma szialac\#w bloku mozemy zmienic
# a logika zostanie taka sama

class Car
  attr_accessor :color, :doors

  def initialize
    yield(self) #do atrybutu!!!
  end
end

car = Car.new do |c|  #nasze c tutaj to self! mozemy przypisac dane jak pod spodem
  c.color = "Red"
  c.doors = 4
  #w railasach w migracjahc tak jes zapisane na przyklad!!!!
end

puts "My car's color is #{car.color} and it's got #{car.doors} doors."