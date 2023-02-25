Rails.application.routes.draw do
  root to:"landing#index"
  devise_for :users
  resources :groups
  resources :entities
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
