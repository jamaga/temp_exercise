# napisac hasha gdzi ekluczem bedzie cos a wartoscia
# funkcja anonimowa ktora bedzie zwracala pusta tablice lub tablice [2, 5]


#
# hej = lambda { print "Hej” }   - funkcja anonimowa przypisana do zmiennej hej
# hej.call


f_anonimowa = lambda {[ 2, 5 ]} #BLOK!!!!
moj_hash = { 'hello' => f_anonimowa }
p moj_hash


# co printuje: {"hello "=>#<Proc:0x007fadb38e6aa8@13lipiec_anonimowa_funkcja.rb:10 (lambda)>}

#teraz wywolac labde zeby zwrocila tablice
# jak wywoluje funkcje zwykla - wiemy jak wywolac i zwrocic
# # to samo z labda - tylko inaczej sie wywoluje niz zwykla funkcje
# hej = lambda { print "Hej” }   - funkcja anonimowa przypisana do zmiennej hej
# hej.call

p f_anonimowa.call

# wyprintowac ta sama tablice - to samo tylko poprzez hasha

p moj_hash['hello'].call

# zmodyfikowac labde - zeby byla w do i end

f_anonimowa2 = -> do
  { 'hello' => 'world' }
end

#wywolac funcje anonimowa zeby zwrocilo slowo world

p f_anonimowa2.call['hello']

p '_________________________'
#hasz gdzie beda 3 parametry - a b c
#wywolac funcje anonimowa ktora sie znajduje w a  - i zeby wyprintowac wartosc hasha

hash = {
    attr: 'value',
    a: -> do
      {
          b: 's'
      }
    end
}

p hash[:a].call[:b]

# zmodyfikowac hasha i wywolanie - zeby funkcja anonimowa przyjmowala 1
# parametr i wstawiac zamiast wartosci s
# przy wywolaniu nie bedzie s tylko przekazana wartosc do funcji anonimowej

#do funkcji mozemy przekazac parametr
# tutaj - zeby przekazac do funkcji anonimoej jakis parametr
# i zeby ten parametr zastapil wartosc s

#moe byc ze strzalke sie stosuje jak nie mamy parametrow
hash = {
    attr: 'value',
    a: lambda do |param|
      {
          b: param
      }
    end
}

p hash[:a].call(27)

# l = lambda do |i|
#   puts i
# end
# l.call(1)

#przekazuje parametr ktory jest liczba
#wstawiam do hasha i istnieje
# wywolac tak aby wyswietlic wartosc z klucz b tego hasha

p hash[:a].call(27)[:b]

