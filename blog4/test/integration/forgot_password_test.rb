require 'test_helper'

class ForgotPasswordTest < ActionDispatch::IntegrationTest
  test 'successfully sent password reminder' do
    get '/users/password/new'
    assert_response :success
    assert_select '.btn-info[value=?]', 'Send me reset password instructions'
    post_via_redirect '/users/password', :user => { :email => 'john@domain.com' }

    assert_select '.alert-info', 'You will receive an email with instructions on how to reset your password in a few minutes.'
  end

  test 'field with password left blank' do
    get '/users/password/new'
    assert_response :success
    post_via_redirect '/users/password', :user => { :email => '' }
    assert_select '.alert-danger li', 'Email can\'t be blank'
  end
end
