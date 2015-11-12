require 'test_helper'

class SignOutTest < ActionDispatch::IntegrationTest
  test 'successful sign out' do
    get '/users/sign_out'
    assert_response :redirect

    assert_redirected_to '/'
    #jakby nie widzialo na stronie glownej tego napisu :(
    assert_select '.alert-info', 'Signed out successfully.'
  end
end

#poprawic ruty - url z rutsow do wylogowania
#sprawdzic czy success czy redirect  --
#i na jaka strone mnie wyderictowalo
