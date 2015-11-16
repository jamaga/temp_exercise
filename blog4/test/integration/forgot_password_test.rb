require 'test_helper'

class ForgotPasswordTest < ActionDispatch::IntegrationTest
  test 'successfully sent password reminder' do
    get '/users/sign_in'
    assert_response :success

    assert_select '.btn-link', 'Forgot your password?'

    get '/users/password/new'
    assert_response :success
    # assert_redirected_to '/users/password/new'
    #dlaczego nie dziala ?
    assert_select 'input.btn.btn-info', 'Send me reset password instructions.'

  end
end
