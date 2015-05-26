module Superlist

  class Item
    attr_reader :element

    def initialize(element)
      @element = element.map { |key, value| value.upcase}
    end

  end

  #chcemyy dodawac itemy do listy za posrednictwem innnej klasy

  class List

    def initialize
      @my_list = []
    end

    def add(data)
      item = Item.new(data)
      @my_list << item.element
    end

    def list
      @my_list
    end

  end
end

#rozbijamy program na mniejsze czesci - latwiej sie czyta, testuje, pisze

o = Superlist::List.new #klasa List dodawala do klasy Item - elementem listy jest ojedynczy item
o.add({'name' => 'Ala'})
o.add({'name' => 'Agata'})
o.add({'name' => 'Agnieszka'})
p o.list

#modul ktory ma liste ma itemy - nikt nie bedzie posiadal klasy list - nie wywali sie
#mozemy uzyc w dowolnym miejscu
