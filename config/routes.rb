Rails.application.routes.draw do

  root 'toppage#index'

  resources :user_menu, only: [:index, :show, :new, :create]

  resources :categories, only: [:show] do
    resources :products, only: [:index, :show, :new, :create]
  end

  resources :users, only: [:index, :show, :new]

  resources :exhibition, only: [:new, :create]

end
