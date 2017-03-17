# class Array
#   def dodawaj
#     self.select do |el|
#       el.is_a?(Fixnum)
#     end.inject(:+)
#   end
# end
#
# p [2, 9, nil, {}, 3, []].dodawaj # => 14

#######

#
# class Foo
#   def self.dodawaj(data)
#     data.map do |elem|
#       if elem.is_a?(Fixnum)
#         elem
#       else
#         0
#       end
#     end.inject(:+)
#   end
# end
#
# #mozna REJECTEM
#
#
# data = [2, 9, nil, {}, 3, []]
# p Foo.dodawaj(data) # => 14

########

#
# class Array
#   def transform
#     self.reject do |el|
#       !el.is_a?(String)
#     end.reverse.map do |el|
#       el = el.reverse
#       el[0].capitalize + el[1, el.length - 2] + el[el.length - 1].capitalize
#     end.join(' ')
#   end
# end
#
# p [{}, 'ania', nil, 'ma', 3, 'kota'].transform # => AtoK AM AinA


#######

# k = [
#     { uid: 1, name: 'Ania' },
#     { uid: 2, name: 'Ala' },
#     { uid: 3, name: 'Basia' },
# ]
#
#
# class Array
#   def szukaj(id)
#     s = self.select do |one_h|
#       id == one_h[:uid]
#     end
#     s[0][:name]
#   end
# end
#
# p k.szukaj(2) # => 'Ala'


########








