class Main

  def self.licz(moje_dane)
    wynik = 0

    moje_dane.each do |jeden_zbior|
      if jeden_zbior.is_a?(Hash)
        jeden_zbior.each do |nazwa_klucza, jeden_podzbior|
          #p jeden_podzbior
          if jeden_podzbior.is_a?(Hash)
            jeden_podzbior.each do |klucz, wart|
              #p wart
              if wart.is_a?(Array)
                wynik = wart.inject(:+)
              elsif wart.is_a?(Fixnum)
                wynik += wart
              end
            end
          elsif jeden_podzbior.is_a?(Array)
            wynik = jeden_podzbior.inject(:+)
          elsif jeden_podzbior.is_a?(Fixnum)
            wynik += jeden_podzbior
          end
        end
      elsif jeden_zbior.is_a?(Array)
        wynik = jeden_zbior.inject(:+)
      elsif jeden_zbior.is_a?(Fixnum)
        wynik += jeden_zbior
      end
    end
    p wynik
  end
end
