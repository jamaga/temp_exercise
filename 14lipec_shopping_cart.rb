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
  #albo w module klase z asortymentem
  #albo w konstruktorze carta parametr z asortymentem - lepsza opcja

  class Item
    attr_accessor :fruit_name, :fruit_price
  end

  class Cart
    def initialize(asortyment)
      @cart = []
      @asortyment = asortyment.to_h
    end

    def add(fruit)
      #sprawdzic czy fruit jest w asortymencie
      #jesli jest - nowa instancja klasy item z fruit name i price
      if @asortyment.key?(fruit)
        item = Shop::Item.new
        item.fruit_name = fruit
        item.fruit_price = @asortyment[fruit]
        @cart << item
      end
    end

    def list
      @cart.map { |item| item.fruit_name }
      #tablica z nazwami produktow tylko - tylko nazwy
    end

    def drop(fruit)
      # @cart z tego usunac elemnt ktorego fruit name = moja zmienna fruit
      @cart.each do |item|
        if item.fruit_name == fruit
          @cart.delete(item)
          break
          #jesli znjdziemy elemnt to go kasujemy i nie chodzimy juz w petli
          # jak jesy pierwszy albo 2gi a mamy 1000 elemento to nie chcemy po iech chodzic
        end
      end
    end

    def purge
      @cart = []
    end

    def total_price
      #w petli zawsze musi byc WARTOSC POCZATKOWA czyli total zero tutaj
      @total = 0
      @cart.each do |product|
        @total += product.fruit_price
      end
      @total
    end
  end

end
