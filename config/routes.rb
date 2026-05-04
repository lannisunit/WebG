Rails.application.routes.draw do
  root "home#index"

  resources :members, only: [:index, :create, :destroy]

  resources :teams do
    resources :members, only: [:create]

  end
end