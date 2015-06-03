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
    attr_accessor :client, :invoice_items

    { company: 'My Company', first_name: 'Agata', last_name: 'Kowalska', city: 'lublin', nip: '719-381-37-18', items: [
        { description: 'usługi informatyczne', quantity: 1, net_price: 1000 },
        { description: 'prosty projekt graficzny', quantity: 1, net_price: 800 }
    ] }
    def initialize(hash_faktury)
      client_on_invoice = InvoicesApp::Client.new
      client_on_invoice.first_name = hash_faktury[:first_name]
      client_on_invoice.last_name = hash_faktury[:last_name]
      client_on_invoice.nip = hash_faktury[:nip]

      @client = client_on_invoice
    end



    def create(invoice_data)
      @tablica_faktury << InvoicesApp::InvoiceItems.new(invoice_data)
    end

    #
    # def delete(date)
    #
    # end
    #
    # def find(date)
    #   @data.detect { |item| item['date'] == date } #jak tu pokazac cala fakture???
    # end
    #
    # def purge
    #   @tablica_faktury = []
    # end

  end
end

f = InvoicesApp::Invoice.new({ company: 'My Company', first_name: 'Agata', last_name: 'Kowalska', city: 'lublin', nip: '719-381-37-18', items: [
    { description: 'usługi informatyczne', quantity: 1, net_price: 1000 },
    { description: 'prosty projekt graficzny', quantity: 1, net_price: 800 }
] })
p f





# prod = InvoicesApp::InvoiceItems.new('safsdfsdfsdf', 3, 4.5)
# p prod.total_netto_price
# p prod.vat_amount
# p prod.brutto_price

# prod2 = InvoicesApp::Product.new('safsdfsdfsdf', 3, 4.5)
# p prod2