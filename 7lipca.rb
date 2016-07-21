my_array = ['ala', 'basia', 'maciek'];
my_array.map!.with_index { |s, index|
  s.capitalize! if index < my_array.length-1 
  s
}
my_array = my_array.join(' - ')
my_array << '.'
