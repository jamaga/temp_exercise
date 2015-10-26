require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test 'body, author, subject are mandatory' do
    c = Contact.create
    assert_equal c.errors[:body].any?, true
    assert_equal c.errors[:author].any?, true
    assert_equal c.errors[:subject].any?, true
  end

  test 'valid when have all attributes' do
    contact = Contact.new(author: 'oskar', body: 'lalalalala', subject: 'pancerny i pies')
    assert_equal contact.valid?, true

    assert_equal contact.author, 'oskar'
    assert_equal contact.body, 'lalalalala'
    assert_equal contact.subject, 'pancerny i pies'
  end

  test 'not valid when attribute is missing' do
    contact = Contact.new(author: 'oskar', body: 'lalalalala', subject: nil)
    assert_equal contact.valid?, false
  end
end
