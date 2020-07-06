Rails.application.routes.draw do

  devise_for :users
  root 'toppage#index'

  resources :user_menu, only: [:index, :show, :new, :create]

  resources :products, only: [:index,:new, :create, :show, :destroy]

  resources :users, only: [:index, :show, :new, :edit, :update] do
    resources :addresses, only: [:new, :create, :update]
  end

  resources :users do 
    get "/products", to: "products#user_index"
  end

  resources :exhibition, only: [:index, :new, :create] 

end
