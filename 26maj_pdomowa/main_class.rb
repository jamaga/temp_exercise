class Main

  def initialize(nasz_hash)
    @nasz_hash = nasz_hash
  end

  def total
    licz_slowa(@nasz_hash.values.flatten)
  end

  def total_group
    wynik = {}
    @nasz_hash.each do |nazwa_grupy, slowa_w_grupie|
      wynik[nazwa_grupy.to_sym] = {} if wynik[nazwa_grupy.to_sym].nil?
      wynik[nazwa_grupy.to_sym] = licz_slowa(slowa_w_grupie)
    end
    wynik
  end

  def licz_slowa(tablica_slow)
    wynik = {}
    tablica_slow.each do |jedno_slowo|
      if wynik[jedno_slowo.to_sym].nil?
        wynik[jedno_slowo.to_sym] = 0
      end
      wynik[jedno_slowo.to_sym] += 1
    end
    wynik
  end

  def suma_wynikow_w_grupie
    wynik = {}
    total_group.each do |nazwa_grupy, slowa_w_grupie|
      wynik[nazwa_grupy.to_sym] = licz_sumy(slowa_w_grupie)
    end
    wynik
  end

  def suma_wynikow
    licz_sumy(total)
  end

  def licz_sumy(zliczone_slowa)
    wynik = 0
    zliczone_slowa.each do |slowo, ilosc_wystapien|
      wynik += ilosc_wystapien
    end
    wynik
  end
end
