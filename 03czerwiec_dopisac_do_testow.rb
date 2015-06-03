class Grains

  def self.square(x)
    2 ** (x - 1)
  end

  def self.total
    wynik = 0
    (1..64).each do |x|
      wynik += 2 ** (x - 1)
    end
    wynik
  end
end

#
# g = Grains.new
# p g.square(3)
# p g.square(8)
# p g.total

# dla 5 tki 16
# 6 - 32
#   4 = x * 3
# x = 4 / 3
