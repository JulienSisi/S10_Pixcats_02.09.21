Rails.application.routes.draw do

  resources :baskets
  resources :articles
  # devise_for :users 
  devise_for :users
  get "/", to: "static_page#home"
  root to: "home#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
