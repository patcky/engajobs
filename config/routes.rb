Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout', edit: 'profile' }
  # Public pages
  root to: 'pages#home'
  get 'about', to: 'pages#about'

  # Routes accessible by all users:
  resources :areas, only: %i[index, show] do
    resources :specialities, only: %i[index, show]
  end
  resources :public_profiles, shallow: true do
    resources :reviews, :links, :profile_contacts, :profile_business_hours
    resources :addresses, shallow: true do
      resources :address_business_hours
      resources :address_contacts
    end
  end
  # Only accessible by admins:
  resources :areas, only: %i[create, update, destroy], module: 'admin' do
    resources :specialities, only: %i[create] 
  end
  resources :specialities, only: %i[edit, update, destroy]
end
