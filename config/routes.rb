Rails.application.routes.draw do
  resources :likes
  resources :tags, only: [:index, :show, :create]
  resources :art_tags
  resources :arts, only: [:index, :show]
  resources :users, only: [:create, :destroy]

  get '/artists', to: 'arts#get_artworks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
