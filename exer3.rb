data = [
    ['ala', 'ma', 'kota'],
    ['kot', 'ma', 'ale'],
]

data.map { |a| 
  a.map.with_index do |w, index|
    if index == 0
      w.capitalize
    else
      w
    end
  end.join(' ')
}.join(' a ') << '.'










- zrobic mapa po glownej tablicy - miec subtablice
- na kazdej subtablicy map z indexem - i sprawdzac czy index to 1wszy element - jak tak to wyraz capitalize , nie - normalny
- zlacz po spacji kazdy wyraz
- zlacz wszystkie tablice po slowie a


