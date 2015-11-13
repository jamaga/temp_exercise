require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest
  test 'successful sign in' do
    get '/users/sign_in'
    assert_response :success
    assert_select 'form' do
      assert_select '[name=?]', 'user[email]'
      assert_select '[name=?]', 'user[password]'
    end

    post_via_redirect '/users/sign_in', :user => { :email => 'john@domain.com', :password => 'qwerty12!@' }
    #poprawic tego URLA - na /account/dashboard - na taki sam
    #url jak na sign_upie
    assert_equal '/users/sign_in', path
    assert_select '.alert-info', 'Signed in successfully.'
  end

  #moge sie zalogowac jak uzytkownik istnieje
  #ma byc ten z yamla - stworzny przez fixtury -  ma byc john
  #i ze sie nie udalo zalogowac - drugi test

  test 'unsuccessful sign in' do
    get '/users/sign_in'
    assert_response :success

    assert_select 'form' do
      assert_select '[name=?]', 'user[email]'
      assert_select '[name=?]', 'user[password]'
    end

    post_via_redirect '/users/sign_in', :user => { :email => 'john@op.pl', :password => 'lalalala' }
    assert_select '.alert-warning', 'Invalid email or password.'
  end
end