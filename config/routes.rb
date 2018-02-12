Rails.application.routes.draw do
  root "welcome#index"

  resources :directors, shallow: true do
    resources :movies
  end

  resources :movies, only: [:index]

  resources :users, only: [:new, :create, :show]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
