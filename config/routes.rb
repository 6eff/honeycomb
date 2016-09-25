Rails.application.routes.draw do

  resources :broadcasters
  resources :products
  resources :materials
  resources :orders 

  root "orders#index"

end
