require 'rubygems'
require 'faker'

module InvoicesApp

  class Client
    attr_accessor :first_name, :last_name, :clients_city, :clients_street, :nip

  end

  class Product
    attr_accessor :description, :quantity, :netto_price

    def initialize(description, quantity, netto_price)
      @description = description
      @quantity = quantity
      @netto_price = netto_price
    end

    def total_netto_price
      #jak wziac Product[:netto_price] zeby tu bylo dostepne
     netto_price * quantity
    end
    #
    # def vat_amount
    #   #23% z Product[:netto_price]
    #   netto_price * 0,23
    # end
    #
    # def brutto_price
    #   netto_price * 1,23
    #   # netto_price + vat
    # end

  end

  class Invoice

  end

end

p InvoicesApp::Product.new('safsdfsdfsdf', 3, 4.5)

