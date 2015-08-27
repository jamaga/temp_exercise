Blog::Application.routes.draw do

  #komentzrze sa zalezne od postow
  #i jest tylko akcja create komentarzy - chcemy tylko tworzy ckomentarze do postw
  resources :posts do
    resources :comments, :only => [:create]
  end

end