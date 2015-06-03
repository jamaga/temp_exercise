class A
  @a = 0
  def initialize(c = 1)
    @a = c + 1
    puts @a
  end
end

A.new
A.new
#zmienne instancyjne - sa akie same - @a zeruje sie przy kazdej
#nowej instancji

class B
  @@a = 0
  def initialize(c = 1)
    @@a += c + 1
    puts @@a
  end
end

B.new
B.new
#zmienne instancyjne sa ZERAMI LUB NILEM
#niezaleznie ile stawiamy instancji - zmienne sie inicjalizuja od poczatku

# zmienne KLASOWE @@  - zmienne istnieja NIEZALEZNIE od postawionych instancji
#kazda kolejna postawiona instanjca przyjmuje wartosci poprzednich
#zmienna przyjmuje wartosci poprzednikow
