class List

  def initialize
    @que = []
  end

  def add(element)
    @que << element
  end

  def remove(element)\
    @que.delete(element)
  end

  def get
    @que.last
  end

  def list
    @que
  end

  def purge
    @que = []
  end

end

o = List.new
p o.list # => []
p o.get # => nil
o.add("Ala")
p o.get # => "Ala"
o.add("Marta")
o.add("Piotrek")
p o.get # => "Piotrek"
p o.list # => ["Ala", "Marta", "Piotrek"]
o.remove("Marta")
p o.list # => ["Ala", "Piotrek"]
o.purge
p o.list # => []

# od linijki  29 sa testy!
# potem co ma byc zwracane - to samo co testy

# 2. Napisać program ktory posiada metody:
#   add, remove, get, list, purge
#
# Program ma miec mozliwosc po przez te metody na:
# + add - dodawanie danych do listy
# + remove - usuwanie z listy wybranego elementu
# + get - pobieranie i zwracanie z listy ostatnio ddanego elementu
# + list - zwracanie listy
# + purge - wyczyszczenie listy
#
#
# np.
# o = List.new
# o.list # => []
# o.get # => nil
# o.add("Ala")
# o.get # => "Ala"
# o.add("Marta")
# o.add("Piotrek")
# o.get # => "Piotrek"
# o.list # => ["Ala", "Marta", "Piotrek"]
# o.remove("Marta")
# o.list # => ["Ala", "Piotrek"]
# o.purge
# o.list # => []