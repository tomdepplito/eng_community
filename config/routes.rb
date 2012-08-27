EngCommunity::Application.routes.draw do
  
  root :to => 'companies#index'

  devise_for :users
  resources :users, :only => 'show'
  
  resources :addresses
  
  resources :tags
  
  resources :companies do
    #resources :addresses
  end
  
  resources :users do
    resources :companies
  end
  
  # resources :companies do
  #   resources :users
  # end
  # 
  # resources :companies do
  #   resources :products
  # end
  # 
  # resources :users do
  #   resources :inqueries
  # end

  
end
