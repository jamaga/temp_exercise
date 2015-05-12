class Percent
  attr_reader :value, :value_of

  def initialize(value, value_of = 100) #jesli nie podam to bedzie 100!
    @value = value
    @value_of = value_of
  end

  def to_p
    @value * 100 / @value_of
  end

end








# wczytywac do konstruktora 1 parametr, parametr opcjnalny
#parametrem  - liczba
# ma  moc zamieniac liczbe na rocny i odwrotnie
# 2 funkcje, puts nazwa funkcji - wypisze procent z tej liczby

# jak nic do konstruktora ma zwracac wyjotek




