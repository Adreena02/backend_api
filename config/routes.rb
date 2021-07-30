Rails.application.routes.draw do
  resources :likes
  resources :tags
  resources :art_tags
  resources :arts
  resources :users

  get '/artists', to: 'arts#get_artworks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
