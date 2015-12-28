require 'test_helper'

class ManagePostsTest < ActionDispatch::IntegrationTest
  test 'success create new post' do
    #z rake routes bierzemy jaki path a tearz musimy miec parametry do tworzenia uzytkownika:
    # najpierw sing_in a haslo i email bierzemy z FIXTUR (users.yml)
    get '/users/sign_in'
    post_via_redirect '/users/sign_in', :user => { :email => 'sample@domain.com', :password => 'qwerty12!@'}
    get '/posts/new'
    assert_response :success
    post_via_redirect '/posts', :post => { :title => 'moj post', :body => 'dsadasdasdasdasdasdasdas'}
    assert_equal 'Post was successfully created.', flash[:notice]
  end
end

#tak samo edycja, widok wszystkich - lista, widok pojedynczego posta etc - tak testy integracyjne
