Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :areas, only: [:index, :show]
  resources :areas, only: [:create, :update, :delete], module: 'admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
