Rails.application.routes.draw do

  resources :products
  resources :materials
  resources :orders 

  root "orders#index"

end
