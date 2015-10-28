require 'test_helper'

class LandingPagesControllerTest < ActionController::TestCase
  test "should get summer_promo" do
    get :summer_promo
    assert_response :success
  end

  test "should get promo_success" do
    get :promo_success
    assert_response :success
  end

end
