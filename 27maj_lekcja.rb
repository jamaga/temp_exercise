#stworzyc program ktory  z tablicy danych
#erzmie wynik i pogruuje w sposob -
#tam gdzie sa anagramy to pogrupuje na druga tablice


tablica_pocz = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']

tablica_kon = [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]

p tablica_pocz.group_by { |w| w.downcase.chars.sort }.values



#group_by downcase chars sort .values
#values daje nam wartosci
#values - zwroci nam wartosci - nie litery