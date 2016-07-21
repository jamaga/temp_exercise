data = [
    ['ala', 'ma', 'kota'],
    ['tomek', 'ma', 'psa'],
    ['agata', 'ma', 'mysz'],
]

data = data.reject.with_index { |t, index| index != 0 && index != data.size-1 }

data.map { |a|
  a.map.with_index do |w, index|
    if index == 0 || index == a.size-1
      w.capitalize
    else
      w 
    end
  end.join(' ')
}.join(' a ') << '.'
