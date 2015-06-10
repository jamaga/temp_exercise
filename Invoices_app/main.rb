require File.dirname(__FILE__)+'/lib/invoice'

invoice = InvoicesApp::Invoice.new({ company: 'My Company', first_name: 'Agata', last_name: 'Kowalska', nip: '719-381-37-18', items: [
                                       { description: 'usługi informatyczne', quantity: 1, net_price: 1000 },
                                       { description: 'prosty projekt graficzny', quantity: 1, net_price: 800 }
                                   ] })
invoice.all
invoice.create

# tutaj mozna z chompa pobierac -
#testuje wszystko co jest w libie

#mozna testowe hasze wlozyc tutaj dla porzadku

#acceptance test - ktory wywoluje te wwtkie rzeczy i patrzy na koncowy rezeutata