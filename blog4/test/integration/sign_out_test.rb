require 'test_helper'

class SignOutTest < ActionDispatch::IntegrationTest
  test 'successful log_out' do
    get '/'
    assert_response :success
    assert_equal 'Signed out successfully.', flash[:notice]
  end
end

#poprawic ruty - url z rutsow do wylogowania
#sprawdzic czy success czy redirect  --
#i na jaka strone mnie wyderictowalo
