require 'rubygems'
require 'faker'

module InvoicesApp

  class Client
    attr_accessor :first_name, :last_name, :clients_street, :nip, :items
  end
  # obsluga adresow (przylad z house number)

  class InvoiceItems  #zminic na invoice item
    attr_accessor :description, :quantity, :netto_price

    def initialize(description, quantity, netto_price)
      begin
        @description = description
        @quantity = quantity
        @netto_price = netto_price
      rescue
        print 'mialy byc TRZY argumenty podane GLABIE' #JAK PRZECHWYCIC TU BLAD
      end

      # if description == nil || quantity == nil || netto_price == nil
      #   raise 'mialy byc TRZY argumenty podane GLABIE'
      # end

      # teraz  -wyjatek mi sie rzuci jak nie podam netto price - trzeba
      # go przechwycyc i cos z nim zrobic - pokazac go w odpowiedni sposob - mielismy
    end

    def total_netto_price
     (@netto_price * @quantity).round(2)
    end

    def vat_amount
      (@netto_price * 0.23).round(2)
    end

    def brutto_price
      (@netto_price * 1.23).round(2)
    end

  end

  class Invoice
    attr_accessor :client, :invoice_items

    { company: 'My Company', first_name: 'Agata', last_name: 'Kowalska', nip: '719-381-37-18', items: [
        { description: 'usługi informatyczne', quantity: 1, net_price: 1000 },
        { description: 'prosty projekt graficzny', quantity: 1, net_price: 800 }
    ] }
    def initialize(hash_faktury)  # powinno byc data - nie hasz faktury
      client_on_invoice = InvoicesApp::Client.new
      client_on_invoice.first_name = hash_faktury[:first_name]
      client_on_invoice.last_name = hash_faktury[:last_name]
      client_on_invoice.nip = hash_faktury[:nip]   #jak tu wlozyc odpowiednio co ma byc - kilka elementow do items
      #items sa tablica - musze wrzucic w itemy to co bylo podane
      # client_on_invoice.items = hash_faktury  #

      client_on_invoice.items = hash_faktury[:items].map{ |item| InvoicesApp::InvoiceItems.new(item) }
      # teraz client_on_inv_items ma elementy    - teraz cos z tym zrobic
      #podobnie z klientem powinno byc - lepiej caly wielki hasz przekazac w konstruktorze , w paametrze client_on_invoice  i
      #w kliencie przypisywac atrybuty do niego

      @client = client_on_invoice
    end

    # InvoicesApp::Client.new(hash_faktury)
    #
    # InvoicesApp::InvoiceItems.new(item_hash)
    #tworzac klienta
    #itemy : ln @tablica_faktury << InvoicesApp::InvoiceItems.new(invoice_data)
    # a client_on_invoice.items = hash_faktury    -- nie jest potrzebne
    # dobrze jest komentowac sobie funkcje - co robi funkcja
    # jak sie rozbije na pliki to sie bedzie latwiej lapac

    def create(invoice_data)  # w odpowiednim miejscu uzyc
      #invoice data - moze byc caly klucz od itemow   - client_on_invoice.items
      #moze zamiast przypisywac do atrybutu - invoice.add client new
      #i przypisac
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