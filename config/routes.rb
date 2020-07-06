Rails.application.routes.draw do

  devise_for :users
  root 'toppage#index'

  resources :user_menu, only: [:show, :create]

  resources :products, only: [:index, :new, :create, :destroy]

  resources :products, only: :show do
    post "/card", to: "card#buy"
  end

  resources :card, only: [:new, :index, :create, :destroy]  

  resources :users, only: [:index, :show, :new, :edit, :update] do
    resources :addresses, only: [:new, :create, :update]
    get "/products", to: "products#user_index"   
  end

  resources :exhibition, only: [:index, :new, :create] 

end
