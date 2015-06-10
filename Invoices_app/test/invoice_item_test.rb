require './../lib/invoice_item'

class InvoicesInvoiceItemTest < Test::Unit::TestCase

  def test_products_description
    products_decsription = Faker::Hacker.say_something_smart
    c = InvoicesApp::InvoiceItem.new(products_decsription, Faker::Number.digit, Faker::Commerce.price)
    assert_equal c.description, products_decsription
  end

  def test_product_quantity
    products_quantity = Faker::Number.digit
    c = InvoicesApp::InvoiceItem.new(Faker::Hacker.say_something_smart, products_quantity, Faker::Commerce.price)
    assert_equal c.quantity, products_quantity
  end

  def test_products_unit_netto_price
    products_unit_netto_price = Faker::Commerce.price
    c = InvoicesApp::InvoiceItem.new(Faker::Hacker.say_something_smart, Faker::Number.digit, products_unit_netto_price)
    assert_equal c.netto_price, products_unit_netto_price
  end

  def test_total_netto_price
    #quantity x netto price
    prod = InvoicesApp::InvoiceItem.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.total_netto_price, 13.5
  end

  def test_vat_amount
    #vat - 23% x netto price
    prod = InvoicesApp::InvoiceItem.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.vat_amount, 1.04
  end

  def test_brutto_price
    #netto price + vat
    prod = InvoicesApp::InvoiceItem.new('safsdfsdfsdf', 3, 4.5)
    assert_equal prod.brutto_price, 5.54
  end
end
