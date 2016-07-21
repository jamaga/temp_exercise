class Main

  def self.transform(data_arr1, data_arr2)
    result = ''

    data_arr1.each_with_index do |array, index|
      array.map! &:capitalize
      #data_arr2[index] - wydobycie kazdego elemntu z INNEJ tablicy O TYM SAMYM INDEXIE
      result += array.join(' i ') << ' ' << data_arr2[index].join(' ') << '. '
    end
    result.strip #OSTATNIA linijka zwrca - rowne z przypisaniem i zwroceniem
  end
end

