# 5!
#  1  2  3  4  5
#  0! = 1

class Silniacwiczenie

  def silnia(number)
    result = 1
    while number > 1
      result = result*number
      number -= 1
    end
    result
  end

  # p silnia(5)
  # p "--------------------"

  def silnia2(number)
    result = 1
      for x in 1..number
        result = result*x
      end
    result
  end

  # p silnia2(5)


    # for i in 1..8 do
    #   puts i
    # end
end
