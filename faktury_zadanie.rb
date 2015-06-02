require 'rubygems'
require 'faker'

module InvoicesApp

  class Client
    attr_accessor :first_name, :last_name, :clients_city, :clients_street, :nip

  end

  class Product
    attr_accessor :description, :quantity, :netto_price

    def initialize(description = nil, quantity = nil, netto_price = nil)
      @description = description
      @quantity = quantity
      @netto_price = netto_price
    end

    #jak zrobic zeby rzucil bledem (moim) jak nie bedzie jakiegos arg!!!!

    def total_netto_price
      #jak wziac Product[:netto_price] zeby tu bylo dostepne
     @netto_price * @quantity
    end

    def vat_amount
      #23% z Product[:netto_price]
      (@netto_price * 0.23).round(2)
    end

    def brutto_price
      (@netto_price * 1.23).round(2)
      # netto_price + vat
    end

  end

  class Invoice
    attr

    #muis przechowywac prodokty i jednego klienta + liete produktow
    # [rzejc] po prdottack - dodac brutto price i miec na fakturze
    # attr    - klient  i prducts - bede arrayami   w initialize klient i produkty

  end

end
#
# prod = InvoicesApp::Product.new('safsdfsdfsdf', 3, 4.5)
# p prod.total_netto_price
# p prod.vat_amount
# p prod.brutto_price

prod2 = InvoicesApp::Product.new('safsdfsdfsdf', 3)
