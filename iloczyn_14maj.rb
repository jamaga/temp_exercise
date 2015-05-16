class Multi
  attr_reader :results

  def initialize(tablica, liczba)
    @results = tablica.map { |n| n * liczba }
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