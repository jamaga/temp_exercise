class Timer
  attr_accessor :seconds

  def initialize(num)
    @seconds = num
  end

  def time_string
    hours = @seconds / 60 / 60  #nie ma modulo bo godziny zawsze beda sie wyswietlaly!
    minutes = (@seconds / 60) % 60
    seconds = @seconds % 60
    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end

#ln 12 -- pozwala nam na wstawianie liczb z tablicy W ODPOWIEDNIE MIEJSCA
# %02d   - w to miejsce jest wstawiana kazde z wynikow
# % - informacja  - ze bedzie personalizowana zmienna
# 02 - ze beda 2 znaki
# d 0znacza liczbe
#  % [hour, min, sec]   -  i teraz przekazujemy co wyprintowac


# def time_string
#   time = @seconds
#   hours = time / 3600
#   minutes = (time % 3600) / 60
#   seconds = (time % (3600)) % 60
#   print_num(hours) + ':' + print_num(minutes) + ':' + print_num(seconds)
# end
#
# def print_num(num)
#   if num.to_s.length == 1
#     "0" + num.to_s
#   else
#     num.to_s
#   end
# end
# end

#modulo - ma sprawdac czy zapisywac minuty
# 3600 / 60 -> 60    i %  -jest zeby wyswitlac zero !
