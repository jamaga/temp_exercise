Rails.application.routes.draw do

  get 'account/dashboard'

  devise_for :users

  root :to => "main#home"

end