Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: %i[show]
  resources :products, only: %i[index show]
  resources :cart, only: %i[create destroy]
  root to: "products#index"
end
