require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #jesli mamy atrybuty ktore sa zgrupowane - mozemy je przetestowac w 1 tescie!! - ksiazkowo - 3 testy, praktycznie
  # mozna w 1 tescie to przejechac:
  test 'should not save contact without email or subject or body' do
    # test zeby ZAPISAC WSZYSTKO
    #c = Contact.new({:subject => 'nowy1', :email => 'a@a.pl', :body => 'nowy post 2015' })

    #sprawdzam czy mi sie NIE ZAPISZE:
    #asercja przejdzie dopiero jak mam wszystkie atrybuty
    contact = Contact.new
    assert !contact.save
    contact.subject = 'Test'
    assert !contact.save
    contact.email = 'email@domain.com'
    assert !contact.save
    contact.body = 'Test body'
    assert contact.save
  end

  test 'should have the necessary required validators' do
    contact = Contact.new
    assert !contact.valid?
    assert_equal [:body, :email, :subject], contact.errors.keys
  end

  test 'should save when has body email and subject' do
    contact = Contact.new({:body => 'jakies cialo', :email => 'jakis email', :subject => 'tytulik'})
    contact.save
    assert_equal 'jakies cialo', contact.body
    assert_equal 'jakis email', contact.email
    assert_equal 'tytulik', contact.subject
  end
end
