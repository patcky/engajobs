Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :areas, only: %i[create, index, show, update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
