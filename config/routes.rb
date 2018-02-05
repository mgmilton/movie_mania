Rails.application.routes.draw do
  root "movies#index"

  resources :directors, shallow: true do
    resources :movies
  end

  resources :movies, only: [:index]
end
