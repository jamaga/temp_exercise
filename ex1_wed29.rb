class Shop

  def initialize(file)
    @database = {}
    source = File.read(file).split('|').map { |row| row.split(';').map { |col| col.split(':')}.to_h }
    source.each do |obj|
      @database[obj['Name']] = obj['Price'].to_f
    end
  end

  def find(string)
    @database[string]
  end

  def all
    @database
  end

end



=begin

Napisać program "Shop", który będzie pomocny podczas wyszukiwania produktów w sklepie.
- program ma wczytywać bazę produktów z pliku tekstowego. Format pliku:
Name:"Apple";Price:2|Name:"Banana";Price:4.5|Name:"Avocado";Price:6|Name:"Pear";Price:3.85

- program ma mieć możliwość sprawdzenia ceny produktu
- program ma mieć możliwość zobaczenia listy produktów

np.
shop = Shop.new('database.txt')
puts shop.find('Banana') # => 4.5
puts shop.all # => { Apple: 2, Banana: 4.5 Avocado: 6, Pear: 3.85 }
=end
