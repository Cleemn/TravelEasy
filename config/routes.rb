Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "dashboard", to: "users#dashboard"
  # patch '/dashboard', to: 'bookings#accept'
  # put '/dashboard', to: 'bookings#decline'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles do
      resources :bookings, only: [:new, :create, :index]
      resources :reviews, only: [ :new, :create ]
  end

  resources :bookings, only: [:show] do
    patch "accept"
    put "decline"
    resources :messages, only: [:index, :create]
  end

end

# est-ce que je peux nester et renester dedans?
