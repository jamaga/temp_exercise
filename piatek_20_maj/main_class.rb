class Main

  def self.licz(hash)
    raise 'TO NIE JEST HASH' unless hash.kind_of?(Hash)
    hash.each do |dzialanie, wartosci|
      raise 'TO NIE JESt TABLICA' unless wartosci.kind_of?(Array)
      wartosci.first
      if dzialanie == 'D'
        wynik = 0
        wynik = wynik = wartosci
      end
      p wynik


    end
  end
end



#zbudowac klase ktora przyjmuje w konstruktorze parametr ktory jest Haszem
#jak nie zostanie podany-  ma wystapic wyjatek
#obowiazkowo ma byc parametr a jak nie jest hashem - wyjatek
