require 'test_helper'

class SendContactFormTest < ActionDispatch::IntegrationTest
  test 'success create new message' do
    get '/contacts/new'
    assert_response :success
    post_via_redirect '/contacts/send_form', :contact => { :email => 'aga@op.pl', :subject => 'AAAAA', :body => 'dsadasdasdasdasdasdasdas'}
    assert_equal 'udalo sie zapisac wiadomosc!', flash[:notice]
  end

  test 'fail create new message' do
    get '/contacts/new'
    assert_response :success
    post_via_redirect '/contacts/send_form'

    #sprawdzamy czy po redirect wyladowalismy na konkretnej stronie
    # wysylamy formularz i sprawdzamy czy zredirectowal na dobra strone
    #sprawdzamy czy kazdy element z listy ma body email subject cant be blank
    assert_equal '/contacts/send_form', path
    assert_select '#error_explanation ul li', 'Body can&#x27;t be blank'
    assert_select '#error_explanation ul li', 'Email can&#x27;t be blank'
    assert_select '#error_explanation ul li', 'Subject can&#x27;t be blank'
  end
end
