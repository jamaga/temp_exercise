require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest
  test 'successful login' do
    get '/users/sign_in'
    assert_response :success
    assert_select 'form' do
      assert_select '[name=?]', 'log_in[email]'
      assert_select '[name=?]', 'log_in[password]'
    end

    #tutaj ma byc post ??
    post_via_redirect '/log_in/save', :log_in => { :email => 'john@op.pl', :password => 'qwertyui' }
    assert_equal '/log_in/success', path

    #po zalogowaniu ma byc - komunikat - jak zalogujemy sie jesli jest komunikat to tak
    #urle popawic
    #moge sie zalogowac jak uzytkownik istnieje
    #ma byc ten z yamla - stworzny przez fixtury -  ma byc john

    #i ze sie nie udalo zalogowac - drugi test

  end
end