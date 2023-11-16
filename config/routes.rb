Rails.application.routes.draw do
  get 'my_bookings/index'
  devise_for :users
  root to: "pages#home"

  # Use the same page, but with a query string param like: view_as=renter or view_as=owner
  # get "/dashboard", to: "pages#dashboard"

  # Setup 2 differents routes
  resources :my_bookings, only: [:index]
  resources :my_properties, only: [:index] # showing the user his properties AND the bookings his properties received # showing the user the bookings he made on other users properties


  resources :properties, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
