Rails.application.routes.draw do
  get 'signup/show'

  post 'signup/save'

  get 'signup/success'

  get 'account/dashboard'

  devise_for :users

  root :to => "main#home"
  #match '/account/dashboard', to: 'account#dashboard', as: 'account_dashboard', via: [:get, :post]

end
