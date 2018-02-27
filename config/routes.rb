Rails.application.routes.draw do
  root "welcome#index"

  resources :directors, shallow: true do
    resources :movies, param: :slug
  end

  resources :movies, only: [:index]

  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :categories, only: [:index]
    resources :awards, only: [:new, :create]
  end

  resources :awards, only: [:index, :show]
  resources :carts, only: [:create]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
