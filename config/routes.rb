Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"

  resources :items, only: [:show, :index, :new, :create, :delete] do
    resources :bookings, only: [:new, :create, :show]
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
