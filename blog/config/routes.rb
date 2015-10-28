Blog::Application.routes.draw do



  get "contacts/new"

  post "contacts/send_form"

  devise_for :users

  #komentzrze sa zalezne od postow
  #i jest tylko akcja create komentarzy - chcemy tylko tworzy ckomentarze do postw

  # w resources posts mamy komentarze
  resources :posts do
    resources :comments, :only => [:create]
    post 'alert', :to =>'posts#alert_post', :on => :member
  end

  get '/set-terms-cookie', to: 'statics#set_cookie', as: 'set_cookie_terms'

  match '/landing/summer', to: 'landing_pages#summer_promo', as: 'landing_pages_summer_promo', via: [:get, :post]
  get '/landing/success', to: 'landing_pages#promo_success', as: 'landing_pages_promo_success'


  root :to => "statics#home"
end




#
# 1.szy parametr - jak adres wyglada w url przegladarki
# 2gi parametr wskazuje na jaki kontroller i akcje ma uderzac
# konroller - statics  , akcja -set_cookie
# 3. indentyfikator z routes
#
# rake routes - pierwsza kolumna to identyfikator