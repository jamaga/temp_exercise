require File.dirname(__FILE__) + '/lib/base'
require File.dirname(__FILE__) + '/lib/seller'
require File.dirname(__FILE__) + '/lib/client'
require File.dirname(__FILE__) + '/lib/invoice_item'
require File.dirname(__FILE__) + '/lib/invoice'  #taka kolejnosc - klasa onvoice bedzie korzystac z invoice_item wiec musi byc zaladowany!

module InvoicesApp
  class Main
    #METODA KTORA jest wywolywana jako init faktur - wszystko przez nia bedzie przechodzilo
    def self.dispatch

    end

  end
end