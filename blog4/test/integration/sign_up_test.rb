require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
  test 'successful subscription to the page' do
    get 'signup/show'
    assert_response :success

    assert_select 'form' do
      assert_select '[name=?]', 'signup[email]'
      assert_select '[name=?]', 'signup[name]'
      assert_select '[name=?]', 'signup[surname]'

    post_via_redirect '/signup/save', :signup => { :email => 'aga@op.pl', :password => 'qwertyui', :passwrod_conformation => 'qwertyui'}
    assert_equal '/signup/success', path
    assert_select '#message', 'Welcome! You have signed up successfully.'
  end

  test 'fail to subscribe' do
    #jak mam za krotkie haslo
    #jak haslo nie pasuje
    #jak uzytkownik juz istnieje
    get 'signup/show'
    assert_response :success
    post_via_redirect '/signup/save', :signup => { :email => '', :password => '', :passwrod_conformation => ''}
    assert_select '#errors', '3 errors prohibited this user from being saved:'
  end
end

#jak zrobic jak juz jestes zapisany i chcesz jeszcze raz sie zapisac
# user_signed_in?
# skad biore bledy - nie mam w kodzie tekstu '3 errors prohibited this user from being saved'