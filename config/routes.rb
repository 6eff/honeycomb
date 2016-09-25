Rails.application.routes.draw do

  resources :materials
  resources :orders 

  root "orders#index"

end
