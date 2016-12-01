class Array

  def change
    self.map do |word|
      word[0].capitalize + word[1, word.length - 2] + word[word.length - 1].capitalize
    end
  end

end

a = %w{foor boom}
puts a.change

#zbudowac funkcje ktora zamieni wsyztskie pierwsze i ostanie litery na duze i zwroci tablice

#puts change(a)





#map z ! bylby potrzebny jesli bym tego arraya dalej uzywala w tej funkcji!
# self - wykorzystywany w Klasach

#
# a = "hello there"
#
# a[1]                   #=> "e"
# a[2, 3]                #=> "llo"
# a[2..3]                #=> "ll"

#przerobic - zeby mozna bylo bezposrednio operowac na arrayu

# puts a.change    --- i ma zadzialac TAK SAMO




