require File.dirname(__FILE__)+'/client'  #dlatego ze mam InvoicesApp:Client.new
require File.dirname(__FILE__)+'/invoice_item'
require 'pry'

module InvoicesApp

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
      client_on_invoice.nip = hash_faktury[:nip]
      client_on_invoice.items = hash_faktury[:items].map{ |item| InvoicesApp::InvoiceItem.new(item[:description], item[:quantity], item[:net_price]) }

      p client_on_invoice.items

      # teraz client_on_inv_items ma elementy    - teraz cos z tym zrobic
      #podobnie z klientem powinno byc - lepiej caly wielki hasz przekazac w konstruktorze , w paametrze client_on_invoice  i
      #w kliencie przypisywac atrybuty do niego

      @client = client_on_invoice

      p @client
    end

    def create(invoice_data)  # w odpowiednim miejscu uzyc
      @tablica_faktury << InvoicesApp::InvoiceItem.new(invoice_data)
    end

    def delete(date)

    end

    def find(date)
      @data.detect { |item| item['date'] == date }[#co tu powinno byc w srodku nawiasow] ,jak tu pokazac cala fakture???
    end

    def purge
      @tablica_faktury = []
    end

    end
end


  # prod = InvoicesApp::InvoiceItem.new('safsdfsdfsdf', 3, 4.5)
  # p prod.total_netto_price
  # p prod.vat_amount
  # p prod.brutto_price

  # prod2 = InvoicesApp::Product.new('safsdfsdfsdf', 3, 4.5)
  # p prod2