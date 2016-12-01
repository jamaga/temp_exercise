class Main

  def read_data
    result = []
    file = File.open('./main.txt')
    file.each_line.with_index do |line, index_x|
      line = line.split(',')
      line.each_with_index do |word, index_y|
        result[index_y] = [] if result[index_y].nil?
        result[index_y][index_x] = word

      end
    end

    p result
    # result.map! do |arr|
    #   arr.reject { |word| word.empty? }
    # end
    # result = result.join(': ')
    # p result
  end

end

m = Main.new
m.read_data



# [{ imie: "Andrzej Nowak", opis: "super", ocena: 4},
# ....
# ]
# maja byc 3 w ta-blicy