Rails.application.routes.draw do

  resources :carts
  resources :baskets
  resources :articles

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resource :basket, only: [:show, :update, :destroy]
  get "/", to: "static_page#home"
  root to: "home#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
