# r1 = reverser { "hello" }   #blok a nie parametr
# r2 = adder(2) { 10 }
#
# p r1 # => "olleh"
# p r2 # => 12


# def reverser
#   yield.reverse!
# end

def reverser
  result = []
  tab = yield.chars  # albo split
  pozycja = tab.length - 1
  while  pozycja >= 0  do
    #pozycja = pozycja - 1
    #pozycja--
    result << tab[pozycja]
    pozycja -= 1
  end
  result.join
end

def adder(number)
  yield + number
end

r1 = reverser do
  "hello"
end

r2 = adder(2) do
  10
end

p r1 # => "olleh"
p r2 # => 12


#while albo for  - pierwszym elementem jest ostatni element mojej tablicy  - nie od zera do x
# ale od x do zera
# chodzimy i na koniec dodajemy do tablicy
