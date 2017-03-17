require 'csv'

class Hash

  def stringify_keys
    self.inject({}) do |hash, pair|
      hash[pair[0].to_s] = pair[1]
      hash
    end
  end

end

class Todo

  def initialize
    @data = []
  end

  def list
    @data.sort! { |x, y| x[:time].to_i <=> y[:time].to_i }
    @data.map do |item|
      item.stringify_keys
    end
  end

  def add(time, title)
    id = @data.length + 1
    #id JEDEN ma byc jak DATA jest PUSTA

    item = {
        :id => id,
        :time => time,
        :title => title
    }
    @data << item

    item[:id]
  end

  def show(id)
    @data.select do |item|
      id == item[:id]
    end.first.stringify_keys
  end

  def remove(id)
    @data.reject! do |item|
      id == item[:id]
    end
    true
  end

  # def report
  #   result = ''
  #   # result = CSV.generate do |csv|
  #   #   @data.each do |one_h|
  #   #    p one_h
  #   #   end
  #   # end
  #   result
  # end

  def report
    source = list
    source.each do |h|
      h.delete('id')
    end
    result = CSV.generate do |csv|
      csv << source.first.keys.map(&:capitalize)
      source.each do |item|
        csv << item.values
      end
    end
    result.chomp
  end

  def purge
    @data = []
  end

end



# chce przekazac pierwszy ROW do CSV (ktory MUSI BYC TABLICA)
# Time,Titile
# to sa klucze naszych haszy


# require 'csv'
# csv_string = CSV.generate do |csv|
#   csv << ["row", "of", "CSV", "data"]
#   csv << ["another", "row"]
#   # ...
# end


# referencja - nawet jak przypisze do innej zmiennej
# to program wie ze to source to jest @data
# metoda clone


#delete dziala jak MAP i usuwa z zrodla orygunalnego tutaj ID
# wyjscie:
# przypisac data do innej zmiennej
# nap source = data   - i operowac na source

# albo uzyc mapa zamiast eacha
# i zamiast deleta uzyc Except



# h = { "a" => 100, "b" => 200 }
# h.delete("a")                              #=> 100



# 1. z mojej glownej tablicy USUWAM klucz o nazwie id
# zostaje TIme i Title (petla po tablicy i metoda delete)
# 2. zamienic symbole na stringi
# 3. 1wszy wiersz - klucze zamienic z wartosciami i zrobic pierwsza DUZA litere
# 4. uzyc funkcji to_csv
#  zaczac od 1 i 4 punktu







#DOKONYC ILE SIE DA


  # def stringify_keys
  #   inject({}) do |hash, pair|
  #     hash[pair[0].to_s] = pair[1]
  #     hash
  #   end
  # end