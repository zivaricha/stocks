Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "home#index"
  root to: 'user_stocks#index'
end
