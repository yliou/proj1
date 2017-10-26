Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch 'capture', to: 'pokemon#capture'
  get 'new', to: 'pokemon#new', as: 'new'
  patch 'damage', to: 'pokemon#damage'
  post 'pokemons', to: 'pokemon#create'
  resources :trainers
  resources :pokemons
end
