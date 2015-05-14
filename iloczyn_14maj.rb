class Multi

  def initialize(tablica, liczba)
    @tablica_before_mltp = tablica

  end

  def results(tablica, liczba)
    @tablica_after_mltp = []
    @tablica_before_mltp.each do |num|
      @tablica_after_mltp << num * liczba
    end
    @tablica_after_mltp
  end

end

# tablica = [1, 5, 2, 8]
# liczba = 2.1
#
# #tablica.map { |one_num| one_num.liczba }
#
# tablica_after_multp = []
# tablica.each do |num|
#    tablica_after_multp << num * liczba
# end
#
# p tablica_after_multp