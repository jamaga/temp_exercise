# klasa kalkulator ma funkcje licz ktora przyjmuje dwa parametry
# pierwszy - tablica liczb z ktorymi sie ma cos stac - wykonac dzialanie - drugi parametr.
# drugi parametr - dzialanie jakos string - np dodaahj


class Kalkulator

  def self.licz(tablica_liczb, dzialanie)
    wynik = 0

    tablica_liczb.each do |jedna_licz|
      wynik = case dzialanie
        when 'dodaj' then wynik + jedna_licz
        when 'odejmij' then wynik - jedna_licz
        else raise 'nie da sie'
      end
    end
    wynik
  end
end


K = Kalkulator.licz([2,3,4], 'dodaj')
p K

#  score = 70

# result = case score
#    when 0..40 then "Fail"
#    when 41..60 then "Pass"
#    when 61..70 then "Pass with Merit"
#    when 71..100 then "Pass with Distinction"
#    else "Invalid Score"
# end

# puts result