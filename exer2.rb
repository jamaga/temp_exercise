data = [1, 2, 3, 4, 5, 6]

data.select.with_index { |num, index| index != 0 && index != data.length-1 }.join('-') << '.'
  


