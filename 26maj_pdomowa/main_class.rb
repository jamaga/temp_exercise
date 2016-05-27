class Main

  def initialize(nasz_hash)
    @nasz_hash = nasz_hash
  end

  def total
    wynik = {}
    @nasz_hash.each do |nazwa_grupy, slowa_w_grupie|
      slowa_w_grupie.each do |jedno_slowo|
       if wynik[jedno_slowo.to_sym].nil?
         wynik[jedno_slowo.to_sym] = 0
       end
       wynik[jedno_slowo.to_sym] += 1
      end
    end
    wynik
  end

  def total_group
    wynik = {}
    @nasz_hash.each do |nazwa_grupy, slowa_w_grupie|
      wynik[nazwa_grupy] = {}
      slowa_w_grupie.each do |jedno_slowo|
        if wynik[nazwa_grupy][jedno_slowo.to_sym].nil?
          wynik[nazwa_grupy][jedno_slowo.to_sym] = 0
        end
        wynik[nazwa_grupy][jedno_slowo.to_sym] += 1
      end
    end
    wynik
  end
end

#zrobic tak zeby DRY
#dorobic testy
#dodac funkcje - ale pewne elementy sie powtarzaja
#zrobic funkcje z tgo co sie POWTARZA tylko i obtestowac


