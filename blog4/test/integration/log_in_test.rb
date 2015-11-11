require 'test_helper'

class LogInTest < ActionDispatch::IntegrationTest
  test 'successful login' do
    get '/users/sign_in'
    assert_response :success
    assert_select 'form' do
      assert_select '[name=?]', 'log_in[email]'
      assert_select '[name=?]', 'log_in[password]'
    end

    #tutaj ma byc post ??
    post_via_redirect '/log_in/save', :log_in => { :email => 'aga@op.pl', :password => 'qwertyui' }
    assert_equal '/log_in/success', path
  end
end
