class Main

  def self.licz(hasz)
    wynik = {}
    hasz.each do |nazwa_grupy, zawartosc_grupy|
      if zawartosc_grupy.is_a?(Hash)
        wynik[nazwa_grupy] = self.licz(zawartosc_grupy)
      elsif zawartosc_grupy.is_a?(Array)
        wynik[nazwa_grupy] = zawartosc_grupy.inject(:+)
      else
        raise 'NIE OBSLUGUJEMY'
      end
    end
    wynik
  end

end

#pusta zmienna tworzy sie jak chcemy cos dorzucac, cos robic z nia - deklarujemy wynik
#jesli na starcie mamy wynik - juz nie przypisujemy!
#jesli bysmy cos dorzucali/ dodawali - to tak, w tym przypadku nie potrzeba
#


