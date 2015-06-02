require 'rubygems'
require 'faker'

module InvoicesApp

  class Client
    attr_accessor :first_name, :last_name, :clients_city, :clients_street, :nip

  end

  class Product
    attr_accessor :description, :quantity, :netto_price

  end

  class Invoice

  end

  class Calculations

  end

end