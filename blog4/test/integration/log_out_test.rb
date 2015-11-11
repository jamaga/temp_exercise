require 'test_helper'

class LogOutTest < ActionDispatch::IntegrationTest
  test 'successful log_out' do
    get '/'
    assert_response :success
    assert_equal 'Signed out successfully.', flash[:notice]
  end
end
