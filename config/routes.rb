Rails.application.routes.draw do
  get "bookings/new"
  get "flights/index"
  get "up" => "rails/health#show", as: :rails_health_check
  root "flights#index"
  resources :flights, only: [ :index ]

  resources :bookings, only: [ :new, :create, :show ]
end
