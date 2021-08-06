Rails.application.routes.draw do
  resources :likes, only: [:index, :create, :show]
  resources :tags, only: [:index, :show, :create]
  resources :art_tags, only: [:index, :show]
  resources :arts, only: [:index, :show]
  resources :users, only: [:create, :index]

  get '/artists', to: 'arts#get_artworks'

  get '/users/suggestions', to: 'users#suggestions'
  get '/users/:id', to: "users#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id/favorites', to: "users#favorites"

  post '/likes', to: 'likes#create'

  delete '/likes/:id', to: "like#destroy"
end