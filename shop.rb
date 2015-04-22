class Shop
=begin
  attr_reader :price
  attr_writer :price
=end
  attr_accessor :price, :title
  #to samo co wyzej

  #umozliwilismy czytanie i zapisywanie atrybutow klasy z zewnatrz klasy

  def initialize(price, title)
    @price = price
    @title = title
  end

end
=begin
  def display_price
    #bedzei wyswietlala cene za tytul
    @price
  end

  def to_name
    # bedzie wyswietlala pozycje to_name - wyswietli nazwe i po myslniku cene.
    @title
  end
=end

=begin
  def price
    @price
  end

  def title
    @title
  end
=end

shop = Shop.new(90, "dziala nawarony")
shop.price = 100
shop.title = "nowy tyt"
p shop.price
p shop.title
