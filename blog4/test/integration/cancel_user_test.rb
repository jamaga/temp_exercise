require 'test_helper'

class CancelUserTest < ActionDispatch::IntegrationTest
  test 'successful cancelling of an account' do
    get '/users/edit'
    assert_response :redirect

    post_via_redirect '/users'
    get '/'
    #to samo tu - nie widzi dziad .alert-info
    assert_select '.alert-info', 'Bye! Your account has been successfully cancelled. We hope to see you again soon.'
  end
end