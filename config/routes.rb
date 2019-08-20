Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "users#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles do
      resources :bookings, only: [:new, :create, :index]
  end

  resources :bookings, only: [:show] do
    get "accept"
    get "decline"
  end

end

# est-ce que je peux nester et renester dedans?
