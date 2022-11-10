Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List all restaurants (index)
  # get 'restaurants', to: 'restaurants#index'
  # # Add a new restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # # A user can see the details and all reviews of a specific restaurant
  # get 'restaurants/:id', to: 'restaurants#show'
  # # A user can add a new review to a restaurant
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_review

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
