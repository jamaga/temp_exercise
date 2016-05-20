require 'test/unit'

class KalkulatorDwa

  def wykonaj_dzialanie(jedna_linijka)
    tablica_z_linijki = jedna_linijka.split('|')
    case tablica_z_linijki.first
      when 'dodaj'
        dodaj(tablica_z_linijki[1])
      when 'odejmij'
        odejmij(tablica_z_linijki[1])
      when 'mnoz'
        mnoz(tablica_z_linijki[1])
      when 'dziel'
        dziel(tablica_z_linijki[1])
      else
        raise 'NIE MA takiego dzialania!!!!'
    end
  end

  def dodaj(tekst_z_liczbami)
    wynik = 0
    tekst_z_liczbami.split(',').each do |jedna_liczba|
      wynik = wynik + jedna_liczba.to_f
    end
    wynik
  end

  def odejmij(tekst_z_liczbami)
    tablica_z_liczbami = tekst_z_liczbami.split(',')
    wynik = tablica_z_liczbami.delete_at(0)
    wynik = wynik.to_f

    tablica_z_liczbami.each do |jedna_liczba|
      wynik = wynik - jedna_liczba.to_f
    end
    wynik
  end

  def mnoz(tekst_z_liczbami)
    wynik = 1
    tekst_z_liczbami.split(',').each do |jedna_liczba|
      wynik = wynik * jedna_liczba.to_f
    end
    wynik
  end

  def dziel(tekst_z_liczbami)
    tablica_z_liczbami = tekst_z_liczbami.split(',')
    wynik = tablica_z_liczbami.delete_at(0)
    wynik = wynik.to_f

    tablica_z_liczbami.each do |jedna_liczba|
      wynik = wynik / jedna_liczba.to_f
    end
    wynik
  end

end
