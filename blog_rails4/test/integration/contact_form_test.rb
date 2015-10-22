require 'test_helper'

class ContactFormTest < ActionDispatch::IntegrationTest

  #1wszy test  - czy uzytkownnik trafia na te strone
  test 'display contact form' do
    get '/statics/contact'
    assert_response :success
    #znak zapytania -
    #oczekuje formularza ktory bedzie mial action z adresem statics/contact
    assert_select 'form[action=?]', '/statics/contact' do
      assert_select 'input[name=?]', 'contact[subject]'
      assert_select 'input[name=?]', 'contact[author]'
      assert_select 'textarea[name=?]', 'contact[body]'
      assert_select 'input[type=?]', 'submit'
    end
  end

  test 'success create new message' do
    get '/statics/contact'
    assert_response :success
    post_via_redirect '/statics/contact', :contact => { :author => 'ktos', :subject => 'AAAAA', :body => 'dsadasdasdasdasdasdasdas'}
    assert_equal 'Message has been sent', flash[:notice]
  end

  test 'fail create new message' do
    get '/statics/contact'
    assert_response :success
    post_via_redirect '/statics/contact'

    assert_select '#error_explanation ul li', 'Body can\'t be blank'
    assert_select '#error_explanation ul li', 'Author can\'t be blank'
    assert_select '#error_explanation ul li', 'Subject can\'t be blank'
  end
end

#autor subject body ma miec formularz!
#assert_select sprawdza czy cos jest na stornie


