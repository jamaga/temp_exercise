require 'test_helper'

class EditUserTest < ActionDispatch::IntegrationTest
  test 'successful edit of an user' do
    post_via_redirect '/users/sign_in', :user => { :email => 'john@domain.com', :password => 'qwerty12!@' }

    get '/users/edit'
    assert_response :success
    assert_select 'form' do
      assert_select '[name=?]', 'user[email]'
      assert_select '[name=?]', 'user[password]'
      assert_select '[name=?]', 'user[password_confirmation]'
      assert_select '[name=?]', 'user[current_password]'
    end

    put_via_redirect '/users', :user => { :email => 'john@domain.com', :password => 'qwertyui', :passwrod_conformation => 'qwertyui', :current_password => 'qwerty12!@' }
    assert_equal '/', path
    #assert_select '.alert-info', 'Your account has been updated successfully.'
  end

  test 'unsuccessful sign in of an user' do
    get '/users/edit'
    assert_response :redirect
    assert_redirected_to '/users/sign_in'
  end

#jeszcze test
#kiedy udalo nam sie zalogowac ale
#wypelnilismy blednie formularz - no nie podalismy current password!!!

  test 'we didn\'t write current password' do
    post_via_redirect '/users/sign_in', :user => { :email => 'john@domain.com', :password => 'qwerty12!@' }
    get '/users/edit'
    assert_response :success

    put_via_redirect '/users', :user => { :email => 'john@domain.com', :password => 'qwertyui', :passwrod_conformation => 'qwertyui', :current_password => '' }
    assert_select '.alert-danger li', 'Current password can\'t be blank'

  end
end


