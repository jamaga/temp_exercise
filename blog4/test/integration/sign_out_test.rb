require 'test_helper'

class SignOutTest < ActionDispatch::IntegrationTest
  test 'successful sign out' do
    get '/users/sign_out'
    assert_response :redirect
    assert_redirected_to '/'

    get '/'
    assert_response :success
    assert_select '.alert-info', 'Signed out successfully.'
  end
end