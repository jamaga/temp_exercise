class Main

  def self.zamieniaj(nasza_tablica)
    wynik = {}

    nasza_tablica.each do |jeden_element|
      if jeden_element.is_a?(Hash)
        jeden_element.each do |klucz, wartosc|
          if wynik[klucz].nil?
            wynik[klucz] = 0
          end
          if wartosc.is_a?(Array)
            wynik[klucz] += wartosc.reduce(:+)
          elsif wartosc.is_a?(Fixnum)
            wynik[klucz] += wartosc
          end
        end
      else
        wynik.merge! self.zamieniaj(jeden_element)
      end
    end
    wynik
  end
end