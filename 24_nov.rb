# [{}, 'ania', nil, 'ma', 3, 'kota'].transform # => AtoK AM AinA
b = [{}, 'ania', nil, 'ma', 3, 'kota']

class Array
  def transform
    self.reject do |elem|
      not elem.is_a?(String)
    end.reverse.map do |el|
      el = el.reverse
      el[0].capitalize + el[1, el.length - 2] + el[el.length - 1].capitalize
    end.join(' ')
  end

end

class String
  def detransform
    self.reverse.downcase.split(' ')
  end
end

# puts b.transform.detransform.inspect



# map - zwraca TYLE samych elementow ile transformuje!!!
# map - dobry jak robimy trasormacje na KAZDYM elemecie

# chcemy usunac czesc danych z tablicy na podstawie warunku



# "AtoK AM AinA".detransform

## => ['ania', 'ma', 'kota]


#########

# [2, 9, 3].dodawaj #=> -10

class Array
  def dodawaj
    self.inject(:-)
  end
end

#p [2, 9, 3].dodawaj


#k.szukaj(2) # => 'Ala'

# class Array
#   def szukaj(id)
#     self.select! do |el|
#       el[:uid] == id
#     end
#     self[0][:name]
#   end
# end

# k.szukaj(3)

#chcemy zwrocic name lementu ktory ma uid 2 w tym elemencie


# chcamy zmodyikowac zeby zamiast 3ki - albo cyfre albo arraya z liczbami
#  jesli podam array to 2 imiona po przeconku


k = [
    { uid: 1, name: 'Ania' },
    { uid: 2, name: 'Ala' },
    { uid: 3, name: 'Basia' },
]


# a = [ "a", "b", "c" ]
# a.include?("b")   #=> true
# a.include?("z")   #=> false
#


#ma dzialac - najgorzej - ifa    - fajnie jakby ids zawsze byl arrayem! -

#PUTSUJEMY COS NAD LINIJKA Z BLEDEM!!!

# to dziala:
# class Array
#   def szukaj(ids)
#     unless ids.is_a?(Array)
#       ids = [ids]
#     end
#     #ids = [*ids]
#     self.select do |el|
#       ids.include?(el[:uid])
#     end.map do |el|
#       el[:name]
#     end.join(', ')
#   end
# end
#
#
# p k.szukaj(3) # Basia
# p "__________________"
# p k.szukaj([2, 3]) # Ania, Basia



#
# ma zadzialac i w putsie ma byc wynikiem
# pierwszy znak wyrazu DUZY i ostatni znak wyrazu DUZA litera

# class A
#   attr_accessor :name
#
#   def name
#     @name[0].capitalize + @name[1, @name.length - 2] + @name[@name.length - 1].capitalize
#   end
#
# end
#
# a = A.new
# a.name = 'bcd'
# puts a.name # 'AaA'


#######

# class Foo
#   attr_accessor :name
#
#   def initialize(word)
#     @word = word
#   end
#
#   def name
#     @word.capitalize + ' ' + @name.capitalize
#   end
#
# end
#
# a = Foo.new('hello')
# a.name = 'world'
# puts a.name # = Hello World

 #############

# class Bar
#   def initialize(data)
#     @data = data
#   end
#
#   def find(id)
#     @data.select do |el|
#       id == el[:uid]
#     end.map do |el|
#       el[:name]
#     end.join(', ')
#   end
# end
#
# nie usze miec ! po select - bo OD RAZU robie mapa joina i od razu ZWRACAM
# #atrybut musimy miec - JESLI chcemy go uzywac POZA klasa
# #jesli chcemy uzywac wewnatrz klasy - wystarczy @nazwa_zmiennej
#
#
#
# data = [
#     { uid: 1, name: 'Ania' },
#     { uid: 2, name: 'Ala' },
#     { uid: 3, name: 'Basia' },
# ]
#
# a = Bar.new(data)
# p a.find(1) # => Ania


###########


sample_data = [
    { uid: 1, name: 'Ania' },
    { uid: 2, name: 'Ala' },
    { uid: 3, name: 'Basia' },
]

# class Foo
#   def initialize(data)
#     @data = data
#   end
# end
#
# class Bar
#   def initialize(data)
#     @data = data
#   end
#
#   def update(id, imie)
#     @data.select do |one_hash|
#       id == one_hash[:uid]
#     end.map! do |el|
#       el[:name] = imie
#     end
#   end
#
#   def find(szukane_id)
#     @data.select do |one_h|
#       szukane_id == one_h[:uid]
#     end.map do |el|
#       el[:name]
#     end.join(', ')
#   end
# end

# x = Bar.new(sample_data)
# x.update(2, 'Alina')
#
# p x.find(2) #=> 'Alina'




class Foo
  def initialize(data)
    @data = data
  end

  def search(id)
    @data.select do |one_hash|
      id == one_hash[:uid]
    end
  end
end

class Bar < Foo
  def update(id, imie)
    search(id).map do |el|
      el[:name] = imie
    end
  end

  def find(szukane_id)
    search(szukane_id).map do |el|
      el[:name]
    end.join(', ')
  end
end

x = Bar.new(sample_data)
x.update(2, 'Alina')

p x.find(2) #=> 'Alina'

#przyisywac nie nadpisywac!!! zeby sobie wyputsowac !!












