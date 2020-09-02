Rails.application.routes.draw do
  resources :picture_tags
  resources :tags
  resources :likes
  resources :pictures do
    resource :comments
  end
  resources :items
  resources :villagers
  resources :fossils
  resources :sea_creatures
  resources :user_bugs
  resources :user_villagers
  resources :user_fish
  resources :user_items
  resources :user_seacreatures
  resources :user_fossils
  resources :bugs
  resources :fish
  resources :users
  resources :tag_follows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
