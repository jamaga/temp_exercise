class Shop

  def initialize(price, title)
    @price = price
    @title = title
  end

  def display_price
    #bedzei wyswietlala cene za tytul
    p @price
  end

  def to_name
    # bedzie wyswietlala pozycje to_name - wyswietli nazwe i po myslniku cene.
    p @title
  end

end