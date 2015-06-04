#program ktory bedzi eprzyjmowal zdanie
#ciag znakow ze spacja
#ma zwracac przez jakas metode np get_despription
#zdanie tylko z odwrotnymi literami - male na duze duze na male
#zaczac od testow

class LettersChange
#metoda statyczna - jest z self!
  def self.get_description(sentence)
    sentence.chars.map { |litera|
      if litera =~ /[A-Z]/
        litera.downcase
      else
        litera.upcase
      end
    }.join
  end

end

#map zwraca w to samo miejsce przerobiona rzecz!!!
#each tego nie robi!!!! tylko chodzi po tablicy
#wiecej kodu trzeba!

p LettersChange.get_description('Ala mA kOtA')


# def self.get_description(sentence)
#   sentence.chars.map do |litera|
#     if litera =~ /[A-Z]/
#       litera.downcase
#     else
#       litera.upcase
#     end
#     litera
#   end
#   sentence.join