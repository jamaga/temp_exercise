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

  root :to => "statics#home"
end