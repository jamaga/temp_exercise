Blog::Application.routes.draw do

  get "contacts/new"

  post "contacts/send_form"

  devise_for :users

  #komentzrze sa zalezne od postow
  #i jest tylko akcja create komentarzy - chcemy tylko tworzy ckomentarze do postw
  resources :posts do
    resources :comments, :only => [:create]
  end

  root :to => "statics#home"
end