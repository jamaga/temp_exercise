require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
  test 'successful subscription to the page' do
    get '/users/sign_up'
    assert_response :success

    assert_select 'form' do
      assert_select '[name=?]', 'user[email]'
      assert_select '[name=?]', 'user[password]'
      assert_select '[name=?]', 'user[password_confirmation]'
    end

    post_via_redirect '/users', :user => { :email => 'aga@op.pl', :password => 'qwertyui', :passwrod_conformation => 'qwertyui'}
    assert_equal '/account/dashboard', path
    assert_select '.alert-info', 'Welcome! You have signed up successfully.'
  end

  test 'fail to sign up' do
    get '/users/sign_up'
    assert_response :success

    post_via_redirect '/users', :user => { :email => '', :password => '', :passwrod_conformation => ''}
    #assert_select '.alert-danger h4', '2 errors prohibited this user from being saved:'
    assert_select '.alert-danger' do
      assert_select 'h4', '2 errors prohibited this user from being saved:'
      assert_select 'li', 'Email can\'t be blank'
      assert_select 'li', 'Password can\'t be blank'
    end
  end
end
