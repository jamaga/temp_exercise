require 'test_helper'

class WinterPromoTest < ActionDispatch::IntegrationTest
  test 'success save to winter promo subscription' do
    get '/winter-promo'
    assert_response :success
    #sprawdzamy czy formularz istnieje
    assert_select 'form' do
      assert_select '[name=?]', 'winter_promo[email]'
      assert_select '[name=?]', 'winter_promo[name]'
      assert_select '[name=?]', 'winter_promo[surname]'
    end

    post_via_redirect '/winter-promo/save', :winter_promo => { :email => 'jan@op.pl', :name => 'janek', :surname => 'kowalski'}

    #oczekuje tu przekierowania - zeby wyladowac na te storne po poprawnym zapisie:
    assert_equal '/winter-promo/success', path
    assert_select '#message', 'Dziekujemy za zapisanie do promocji'
  end

  test 'fail save to winter promo' do
    get '/winter-promo'
    assert_response :success
    post_via_redirect '/winter-promo/save', :winter_promo =>  { :email => '', :name => '', :surname => ''}

    #chemy miec BLEDY na formularzu jak sie nie zapisze bo puste pola zostawione
    assert_equal '/winter-promo/save', path
    assert_select '#errors', 'Formularz jest niepoprawny'
  end
end
