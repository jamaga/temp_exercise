class Temperatura
  def initialize(temp = 0, system = :k)

    case system
      when :c

      when :f

      else
        @t = temp

    end

  end

  def in_c

  end

  def in_f

  end

  def in_k
    @t
  end

end

#testy sie 4x mniej wiecej
#to samo c i f