EngCommunity::Application.routes.draw do

  devise_for :users
  
  resources :companies

  root :to => 'home#index'
end
