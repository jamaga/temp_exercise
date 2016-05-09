Rails.application.routes.draw do

  get 'account/dashboard'

  devise_for :users, :controllers => { :registrations => 'registrations' }

  root :to => "main#home"

end