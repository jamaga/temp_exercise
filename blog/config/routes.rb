Blog::Application.routes.draw do

  devise_for :users

  get "statics/contact"

  #komentzrze sa zalezne od postow
  #i jest tylko akcja create komentarzy - chcemy tylko tworzy ckomentarze do postw
  resources :posts do
    resources :comments, :only => [:create]
  end

  root :to => "statics#home"
end