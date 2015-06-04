# def foo(callback, counter)
#   while counter > 0
#     callback.call(counter)
#     counter -= 1
#   end
# end
#
# # l = lambda{ |x| puts x }    tak samo do end :
# l = Proc.new do |x|
#   puts x
# end
#
# foo(l, 5) #ta funkcja 5 4 3 2 1 pwinna wyprintowac
#

def proc1
  p = Proc.new { return -1 } #mamy return - tyczy sie CALEGO KONTEKSTU - naszej funkcji
  #do linijki 19 nie doszlo bo zorbilismy return
  #lambda konczy dzialanie bloku ktorego robimy!!!!
  p.call
  puts "Nikt mnie nie widzi :-("
end

def proc2
  p = lambda { return -1 }
  puts "Blok zwraca #{p.call}"
end

proc1
proc2
#lepijj - bezpieczniej uzywac lambdy - bo return nam nie namiesza