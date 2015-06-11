module InvoicesApp
  class InvoiceItem
    attr_accessor :description, :quantity, :net_price

    def initialize(item)
      @description = item[:description]
      @quantity = item[:quantity]
      @net_price = item[:net_price]
    end

    def vat_value
      InvoicesApp::Base::VAT_RATE * @net_price
    end

    def gross_value
      @net_price + vat_value
    end
  end
end