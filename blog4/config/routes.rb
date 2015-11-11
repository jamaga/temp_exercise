Rails.application.routes.draw do
  get 'log_out/show'

  post 'log_out/success'

  get 'log_in/show'

  post 'log_in/success'

  get 'signup/show'

  post 'signup/save'

  get 'signup/success'

  get 'account/dashboard'

  devise_for :users

  root :to => "main#home"
  #match '/account/dashboard', to: 'account#dashboard', as: 'account_dashboard', via: [:get, :post]

end
