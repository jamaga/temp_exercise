module InvoicesApp
  class InvoiceItem #zminic na invoice item
    attr_accessor :description, :quantity, :netto_price

    def initialize(description, quantity, netto_price)
      begin
        @description = description
        @quantity = quantity
        @netto_price = netto_price
      rescue
        print 'mialy byc TRZY argumenty podane GLABIE'
      end
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
end