Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :items, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:show, :new, :create]
    # collection do
    #   get :miscellaneous
    #   get :beverages
    #   get :entertainment
      # Add more categories here as needed
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
