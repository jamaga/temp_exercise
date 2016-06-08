class Main

  def self.licz(moje_dane)
    wynik = 0
    moje_dane.each do |zbior|
      wynik += self.licz_zbior(zbior)
    end
    wynik
  end

  def self.licz_zbior(zbior)
    if zbior.is_a?(Fixnum)
      return zbior
    elsif zbior.is_a?(Array)
      return zbior.inject(:+)
    elsif zbior.is_a?(Hash)
      wynik = 0
      zbior.each do |nazwa, wartosc|
        wynik += self.licz_zbior(wartosc)
      end
      return wynik
    else
      return 0
    end
  end

end
