class Main
  def self.transform(data)
    result = ''

    data.each do |a|
      if a.last > 0
        tmp_arr = a.first.map do |name|
          [name.capitalize] * a.last
        end
        tmp_arr.map! do |a|
          a.join(' ')
        end
        result += tmp_arr.join(', ') << '. '
      end
    end
    result.strip
  end
end

# [['alicja', 'alicja'], ['basia', 'basia']]
#
# ['alicja alicja', 'basia basia']
#
# basia kasia
# alicja basia kasia
#
# 'Alicja Alicja. Basia Basia Basia, Kasia Kasia Kasia.'
#


# - dla kazdej podtablicy np ["basia", "kasia"], 3] - tworzymy nowa tablice - nowa zmienna ktora jest tablica
# - przejsc po tablicy z imionami i stworzyc dla kazdego elementu np basia podtablice we wczesniej utworzonej tablicy w ktorej bedzie znajdowac sie przemnozona ilosc imion
# - po tym - kazda podtablice (nowoutworzona) join po spacji a kazda tablice join po przecinku
# - calosc joinujemy po kropce