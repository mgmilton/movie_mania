Rails.application.routes.draw do
  root "welcome#index"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  resources :directors, shallow: true do
    resources :movies
  end

  resources :movies, only: [:index]

  resources :users, only: [:new, :create, :show]
end
