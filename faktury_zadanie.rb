require 'rubygems'
require 'faker'

module InvoicesApp

  class Client
    attr_accessor :first_name, :last_name, :clients_city, :clients_street, :nip
  end
  # obsluga adresow (przylad z house number)

  class InvoiceItems  #zminic na invoice item
    attr_accessor :description, :quantity, :netto_price

    def initialize(description, quantity, netto_price)
      @description = description
      @quantity = quantity
      @netto_price = netto_price
    rescue
      print 'mialy byc TRZY argumenty podane GLABIE' #JAK PRZECHWYCIC TU BLAD

      # if description == nil || quantity == nil || netto_price == nil
      #   raise 'mialy byc TRZY argumenty podane GLABIE'
      # end

      # teraz  -wyjatek mi sie rzuci jak nie podam netto price - trzeba
      # go przechwycyc i cos z nim zrobic - pokazac go w odpowiedni sposob - mielismy
    end

    #jak zrobic zeby rzucil bledem (moim) jak nie bedzie jakiegos arg!!!!

    def total_netto_price
      #jak wziac Product[:netto_price] zeby tu bylo dostepne
     (@netto_price * @quantity).round(2)
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
    @@invoice_count = 0
    attr_accessor :client, :products

    #muis przechowywac prodokty i jednego klienta + liete produktow
    # [rzejc] po prdottack - dodac brutto price i miec na fakturze
    # attr    - klient  i prducts - bede arrayami   w initialize klient i produkty

    def initialize(client, products)
      @client = client
      @products = products
      @@invoice_count += 1
    end

    def self.invoice_count
      @@invoice_count
    end

  end
end

prod = InvoicesApp::InvoiceItems.new('safsdfsdfsdf', 3, 4.5)
p prod.total_netto_price
p prod.vat_amount
p prod.brutto_price

# prod2 = InvoicesApp::Product.new('safsdfsdfsdf', 3, 4.5)
# p prod2