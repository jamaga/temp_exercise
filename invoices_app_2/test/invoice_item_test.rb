require File.dirname(__FILE__) + '/../main'

class InvoiceItemTest < Test::Unit::TestCase
  def setup
    item_data = { description: Faker::Commerce.product_name,
                  quantity: 1,
                  net_price: Faker::Commerce.price }

    @invoice_item = InvoicesApp::InvoiceItem.new(item_data)
  end

  def test_description_not_empty
    assert !@invoice_item.description.empty?
  end

  def test_quatity_greater_or_equal_zero
    assert @invoice_item.quantity >= 0
  end

  def test_quantity_net_price_greater_or_equal_zero
    assert @invoice_item.net_price >= 0
  end

  def test_vat_value
    item_vat_value = InvoicesApp::Base::VAT_RATE * @invoice_item.net_price
    assert_equal @invoice_item.vat_value, item_vat_value
  end

  def test_gross_value
    vat_value = InvoicesApp::Base::VAT_RATE * @invoice_item.net_price
    item_gross_value = vat_value + @invoice_item.net_price
    assert_equal @invoice_item.gross_value, item_gross_value
  end
end