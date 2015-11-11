require 'test_helper'

class SignupControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

end
