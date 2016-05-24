class Main

  def self.dodaj(tablica_wartosci)
    wynik = 0
    tablica_wartosci.map { |liczba| wynik += liczba.to_f }
    wynik
  end

  def self.odejmij(tablica_wartosci, wynik=nil)
    wynik = tablica_wartosci.delete_at(0) unless wynik
    wynik = wynik.to_f
    tablica_wartosci.each do |liczba|
      wynik -= liczba.to_f
    end
    wynik
  end

  def self.mnozenie(tablica_wartosci)
    wynik = 1
    tablica_wartosci.each do |liczba|
      wynik *= liczba.to_f
    end
    wynik
  end

  def self.licz(hash)
    raise 'TO NIE JEST HASH' unless hash.kind_of?(Hash)

    wynik = 0
    typ_pierwszego_dzialania = hash.first[0]

    hash.each do |dzialanie, wartosci|
      raise 'TO NIE JESt TABLICA' unless wartosci.kind_of?(Array)
      case dzialanie.to_s
        when 'D'
          wynik += self.dodaj(wartosci)
        when 'O'
          if typ_pierwszego_dzialania == dzialanie
            wynik = self.odejmij(wartosci, wartosci.first)
          else
            wynik -= self.odejmij(wartosci)
          end
        when 'M'
          if typ_pierwszego_dzialania == dzialanie
            wynik = 1
          end
          wynik *= self.mnozenie(wartosci)
      end
    end
    wynik
  end
end



#zbudowac klase ktora przyjmuje w konstruktorze parametr ktory jest Haszem
#jak nie zostanie podany-  ma wystapic wyjatek
#obowiazkowo ma byc parametr a jak nie jest hashem - wyjatek
