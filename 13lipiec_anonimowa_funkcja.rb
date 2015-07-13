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

#moe byc ze strzalke sie stosuje jak nie mamy parametrow   - rozwiazanie:     ->(x) {  }
#rownowazne :

# p = ->(x) { x + 1 }
# p = lambda { |x| x + 1 }

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

p '--------------------------------'


# c i e sa kluczami losowymi gdzie wystapila lambda
#napisac petle / funkcje ktora wypisuje wynik tylko z funkcji anonimowych
# wszystkie inne atrybuty pomija
# nie wiem ze funkcja anonimowa jest pod danym kluczem

h = {
    a: 1,
    b: 5,
    c: -> {
      'Hello'
    },
    d: 66,
    e: -> {
      'World'
    }
}
# albo sprawdzic czy funkcja jes typu lambda
# lub czy si ewywoluje - callable
# gorzej - sprawdzic czy nie jest obiektem, tablica etc - tez mozna
# respond_to   i defined

# ROZWIAZANIA :
# h[:c].is_a? Proc
# h[:c].respond_to? :call
# h[:c].class == ‘Proc’
# h[:c].lambda?

h.each do |klucz, wartosc|
  if wartosc.respond_to? :call
    p wartosc.call
  end
end

#zmodyfikowac zeby dodac wszystkie wartosci ktore sa wartosciami liczbowymi

wynik = 0
h.each do |klucz, wartosc|
  if wartosc.kind_of?(Integer)
    wynik += wartosc
  end
end
p wynik

