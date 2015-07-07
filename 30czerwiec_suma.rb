# sumowanie 1,6,2,1
class Suma

  def adding(array)
    result = 0
    for x in array
      result += x
    end
    result
  end

  #p adding([1,5,2,1,4,6])

  def adding_even(array)
    result = 0
    for x in array
      if x%2 == 0
        result += x
      end
    end
    result
  end

  #p adding_even([1,5,2,1,4,6])

  def add_full_num(array)
    result = 0
    for x in array
      if x%10 == 0
        result += x
      end
    end
    result
  end

  #p add_full_num([1,2,5,45, 10, 20, 5, 6, 40])

  #przyjmuje hasz - x = {“a” => 1, “b” => [1,2,3], “c” => “ala ma kota” }
  #zsumuje wszystie liczby w haszu
  # value.kind_of?(Array)

  def sum_numbers(h)
    result = 0
    h.each do |key, value|
      if value.kind_of?(Integer)
        result += value
      elsif value.kind_of?(Array)
        for x in value
          result += x
        end
      end
    end
    result
  end

  #p sum_numbers({"a" => 1, "b" => [1,2,3], "c" => "ala ma kota" })

  #funkcja ktora mnozy wszystkie elementy tablicy

  def multiply_from_array(array)
    result = 1
    for x in array
      result *= x
    end
    result
  end

  #p multiply_from_array([2,5])

  #DODA2QC  co drugie element [1,3,5,6,7] = 3 + 6

  def add_every_second(array)
    result = 0
    n = 0
    for x in array
      if n % 2 == 0
        result += x
      end
      n += 1
    end
    result
  end

  #p add_every_second([1,3,5,6,7])

  #hasz - przyjmuje, hasz jak wyzej
  # program ma mnozyc liczby w tablicach

  # x = {“a” => 1, “b” => [1,2,3], “c” => “ala ma kota”, “d” => [2,4,6] }   , 288

  def multiply_in_array(hash)
    result = 1
    hash.each do |key, value|
      if value.kind_of?(Array)
        for x in value
          result *= x
        end
      end
    end
    result
  end

end

#p multiply_in_array({"a" => 1, "b" => [1,2,3], "c" => "ala ma kota", "d" => [2,4,6] })



