Rails.application.routes.draw do
  resources :contacts

  root to: redirect('/contacts')
end
