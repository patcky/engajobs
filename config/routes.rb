Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout', edit: 'profile' }
  # Public pages
  root to: 'pages#home', as: :home
  get 'about', to: 'pages#about', as: :about

  resources :areas, shallow: true do
    resources :specialities
  end
  resources :public_profiles, shallow: true do
    resources :reviews, :favourites, :links, :profile_contacts, :profile_business_hours
    resources :addresses, shallow: true do
      resources :address_business_hours
      resources :address_contacts
    end
  end
end
