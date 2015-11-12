require 'test_helper'

class EditUserTest < ActionDispatch::IntegrationTest
  test 'successful edit of an user' do

    get '/users/sign_in'
    assert_response :success

      get 'users/edit'
      assert_response :success
      assert_select 'form' do
        assert_select '[name=?]', 'user[email]'
        assert_select '[name=?]', 'user[password]'
        assert_select '[name=?]', 'user[password_confirmation]'
        assert_select '[name=?]', 'user[current_password]'
      end
  end

  test  'unsuccessful sign in of an user' do
      get 'users/edit'
      assert_response :redirect
      assert_redirected_to '/users/sign_in'
  end
end
