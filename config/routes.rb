Rails.application.routes.draw do
  root "directors#index"

  resources :directors, shallow: true do
    resources :movies
  end

  resources :movies, only: [:index]
end
