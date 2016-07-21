class Main

  def self.licz_slowa(nasz_array)
    wynik = {}

    nasz_array.flatten.each do |jedno_slowo|

      if wynik[jedno_slowo.to_sym].nil?
        wynik[jedno_slowo.to_sym] = 0
      end
      wynik[jedno_slowo.to_sym] += 1
    end
    wynik
  end
end