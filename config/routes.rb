Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout', edit: 'profile' }
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :areas, only: [:index, :show]
  resources :areas, only: [:create, :update, :delete], module: 'admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
