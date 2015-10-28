require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get set_cookie" do
    get :set_cookie
    assert_response :success
  end

end
