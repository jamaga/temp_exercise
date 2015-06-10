module InvoicesApp
  class InvoiceItem #zminic na invoice item
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
end