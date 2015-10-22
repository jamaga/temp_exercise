require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test 'body is mandatory' do
    assert_equal Contact.new.errors[:body].any?, false
    assert_equal Contact.create.errors[:body].any?, true
  end

  test 'author is mandatory' do
    assert_equal Contact.new.errors[:author].any?, false
    assert_equal Contact.create.errors[:author].any?, true
  end

  test 'subject is mandatory' do
    assert_equal Contact.new.errors[:subject].any?, false
    assert_equal Contact.create.errors[:subject].any?, true
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
