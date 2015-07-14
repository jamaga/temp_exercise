# Napisz program, który będzie dodawał produkty do "koszyka"
# sklepowego.
# Program ma być w module Shop, posiadać dwie klasy Cart
# - jako koszyk oraz Item - jako element koszyka.
# Do koszyka można dodawać tylko te elementy, które są dostępne w sklepie:
#{ 'apple' => 2.22, 'coca-cola' => 1.5, 'banana' => 3.22 }

#    Np.
#
#    cart = Shop::Cart.new
#    cart.add("apple")
#    cart.add("banana")
#    cart.add("peach")
#    cart.list # => ['apple', 'banana']
#    cart.total_amount # => 5.44
#    cart.drop('apple')
#    cart.list # => ['banana']
#    cart.total_amount # => 3.22
#    cart.purge
#    cart.list # => []

module Shop

  class Item
    attr_accessor :fruit_name, :fruit_price

    def initialize(fruit_name, fruit_price)
      @fruit_name = fruit_name
      @fruit_price = fruit_price.to_i
    end
  end

  class Cart < Item
    def initialize
      @cart = []
    end

    def add(fruit)
      @cart << fruit
    end

    def list
      @cart
    end

    def drop(fruit)
      @cart.delete(fruit)
    end

    def total_price
      @cart.each do |product|
        @total += product.fruit_price
      end
    end
  end

end
















#
# class List
#
#   def initialize
#     @que = []
#   end
#
#   def add(element)
#     @que << element
#   end
#
#   def remove(element)\
#     @que.delete(element)
#   end
#
#   def get
#     @que.last
#   end
#
#   def list
#     @que
#   end
#
#   def purge
#     @que = []
#   end
#
# end
#
# o = List.new
# p o.list # => []
# p o.get # => nil
# o.add("Ala")
# p o.get # => "Ala"
# o.add("Marta")
# o.add("Piotrek")
# p o.get # => "Piotrek"
# p o.list # => ["Ala", "Marta", "Piotrek"]
# o.remove("Marta")
# p o.list # => ["Ala", "Piotrek"]
# o.purge
# p o.list # => []