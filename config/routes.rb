Rails.application.routes.draw do
  get 'cartitems/new'
  get 'top/main'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#main'
  resources :cartitems, only: [:new, :create, :destroy, :show]
  
end
