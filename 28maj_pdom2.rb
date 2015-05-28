class Tabelka

  def initialize(file)
    @source = File.read(file).split('|').map { |row| row.split(';').map(&:to_i) }
  end

  def run
    @results = @source.map { |t| t.reduce(:+)}
  end

end


#
# Zadanie 2: Napisz testy + program wczytujacy plik z danymi:
# 1.5;2|5;3;6|9|10;22;34;11|
#
# Program ma sumować kolumny (kolumny odzielamy znakiem: |)
#
# np.
#
p o = Tabelka.new('28maj_padom2_tabelki.txt')
p o.run  # => [3.5, 14, 9, 77, 0]