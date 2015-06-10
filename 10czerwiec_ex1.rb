arr = ["Matz", "chunky", "bacon"]  #wyswietlic za pomoca petli elementy po kolei

arr.each do |elem|
  p elem
end

p '-------------------------'

# for element in array do
#   element.do_stuff
# end

# If you need index, you can use this:
#
# array.each_with_index do |element,index|
#   element.do_stuff(index)
# end

#za pomoca petli for to samo

#petla for przechodzi po arraju po 1 elemencie jeden po jednym
#

for elem in arr do
  p elem
end

p '-------------------------'

# gdzie jest in - mamy tablice z elementami
#elem to nasz obecny element w nasszej iteracji - w pierwsszej matz, drugiej chunki
# a potem co juz chcemy robimy

#while - wykonuje sie niezaleznie czy chcemy operowac na tablicy czy nie
# zalezny od podanego warunku
#
current_index = 0
max_index = arr.length

while current_index < max_index
  p arr[current_index]
  current_index+=1
end

p '-------------------------'

#until    i odwrotne od petli while !!!!
#do while

#until
#dopoki warunek jest SPELNIONY, cos wykonujemy w petli

# until condition_is_false
#   # do something
# end

current_index = 0
max_index = arr.length

until current_index >= max_index  #dopoki current index nie jest wiekszy niz max, wykouj - odwrotne od petli while
  p arr[current_index]
  current_index+=1
end

p '-------------------------'

# n = 3
# 3
# begin
#   puts n
#   n -= 1
# end while n > 0

# do while  / begin while
# petla while moze sie nie wykonac pierwszy raz
#jak wwarunek nie bedzie spelniony
#petla do while / begin while    -  zawsze sie pierwszy raz wykona !!!

current_index = 0
max_index = arr.length
begin
  p arr[current_index]
  current_index+=1
end while current_index < max_index

p '-------------------------'

# w petli for
# oprocz iterowania po tablicy mozna generowac kilka liczb po kolei


for elem in (0..10) do  #(0..10) robi tablice z 10 elementami
  p elem
end

p '-------------------------'

current_index = 0
max_index = arr.length
begin
  p arr[current_index]
  current_index+=1
end until current_index >= max_index

p '-------------------------'

#each

(0..10).each do |nbr|
  p nbr
end

p '-------------------------'


# stopowanie
# ruszanie innych przebiegow petli

# w ruby - break, continue
# break - stopuje petle jesli chcemy
# next - (w innych jezykach continue)
# redo    - restatrujemy wznawiamy od nowa iteracje

for elem in (0..5)
  p elem
end

p '-------------------------'

#jesli liczba jest wieksza od 2, przerwij petle

for elem in (0..5)
  if elem == 2
    break
  end
  p elem
end

# jak doszlismy do 2 to przerwalo nam petle

p '-------------------------'

#next - (continue w innych jezykach)

for elem in (0..5)
  if elem == 2
    next
  end
  p elem
end

#pominelismy element 2

p '-------------------------'


for elem in (0..5)
  if elem < 2
    next
  end
  p elem
end

p '-------------------------'

# redo
#
# for elem in (0..5)
#   if elem < 2
#     p elem
#     redo
#   end
# end
#cos robimy i wznawiamy od poczatku petle i od nowa
# tylko jest petla nieskonczona
# przyklad - jak strace polaczenie z internetem - od nowa staraj sie polaczyc


p '-------------------------'

