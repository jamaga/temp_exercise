require 'test_helper'

class CancelUserTest < ActionDispatch::IntegrationTest
  test 'successful cancelling of an account' do
    #zalogowalismy sie
    post_via_redirect '/users/sign_in', :user => { :email => 'john@domain.com', :password => 'qwerty12!@' }

    get '/users/edit'
    assert_response :success

    #widzi nasz button do usuwania
    assert_select '.btn-danger', 'Cancel my account'

    delete '/users'
    assert_response :redirect

    get '/'
    assert_response :success
    assert_select '.alert-info', 'Bye! Your account has been successfully cancelled. We hope to see you again soon.'
  end

  test 'we cannot remove account if we are not signed in' do



  end
end

#jeszcze  - dla cancel_user
#nie mozamy usunac konta kiedy nie jestesmy zalogowani ! - ale nie mozemy wejsc zeby
#edytowac usera jak nie jestesmy zalogowani- nie trzeba tutaj testu ?

