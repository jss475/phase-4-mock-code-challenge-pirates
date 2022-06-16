Rails.application.routes.draw do
  resources :pirates, only: [:show, :index, :destroy]
  resources :islands, only: [:index]
  resources :treasures, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
