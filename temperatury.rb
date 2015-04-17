class Temperatura
  def initialize(temp = 0, system = :k)

    case system
      when :c
        @value = temp - 272.15

      when :f
        @value = temp * 9/5 - 459.67

      when :k
        @value = temp
      else
        raise('blad glabie')
    end
  end

  p Temperatura.new(temp = 30, system = :c)
  p Temperatura.new(temp = 30, system = :k)
  p Temperatura.new(temp = 30, system = :f)
  p Temperatura.new(temp = 300, system = :d)

  def in_c
    @value
  end

  def in_f
    @value * 3333
  end

  def in_k
    @value + 273.15
  end

  p Temperatura.new(temp = 36, system = :c).in_f

end

#testy sie 4x mniej wiecej
#to samo c i f