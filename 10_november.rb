#mamy podana tablice z wyrazami - stringi
#

t = ['ala', 'ma', 'kota', 2]

#zapisac zdanie wspak pomijajac inne elementy niz stringi (wziac tylko stringi)
# zdanie napisane wspak ma byc - zaczynac sie z Duzej   - Atok Am Ala
# funkcja ktora wywoluje:

# t.change
#
#tez mozna:
# class Array
#   def change
#     self.map do |elem|
#       if elem.is_a?(String)
#         elem = elem.reverse
#         elem[0].capitalize + elem[1, elem.length - 1]
#       end
#     end.reverse.join(' ')
#   end
# end
#
# puts t.change

class Array
  def change
    self.reverse.map do |elem|
      if elem.is_a?(String)
        elem = elem.reverse
        elem[0].capitalize + elem[1, elem.length - 1]
      end
    end.join(' ')
  end
end

puts t.change

# drugie zadanie:

class A
  def foo(arr)
    arr.map do |elem|
      elem.capitalize
    end
  end
end

class B < A
  def foo(txt)
    super(txt.downcase.split(' ')).join(' ')
  end

  def bar(txt)
    foo(txt)
  end
end

out = B.new
puts out.bar('heLLo worLD') # => Hello World

dodac 2 rzeczy
w 43 ln dopisac dco


#zadanie 3

class A

  def fO0
    "Hello world"
  end
end

class B < A
  def bar
    fO0
  end

  def fO0
    super
  end
end

out = B.new
puts out.bar # => Hello World


# zad 4

t = [1, 5, 7, 2, 'ala']

r = nil

#dodac wszystkie wartosci i zeby umiescic je w zmiennej r
class Array
  def change
    self.map do |elem|
      if elem.is_a?(Integer)
        elem.inject(:+)
      end
    end

  end

end

puts t.change









