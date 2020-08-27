Rails.application.routes.draw do
  resources :picture_tags
  resources :tags
  resources :likes
  resources :comments
  resources :pictures
  resources :items
  resources :villagers
  resources :fossils
  resources :sea_creatures
  resources :user_bugs
  resources :bugs
  resources :fish
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
