Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout', edit: 'profile' }
  # Public pages
  root to: 'pages#home', as: :home
  get 'about', to: 'pages#about', as: :about
  get 'user_public_profiles', to: 'public_profiles#user_public_profiles', as: :my_profiles

  resources :areas, shallow: true do
    resources :specialities
  end
  resources :languages
  resources :public_profiles, shallow: true do
    resources :reviews, :favourites, :links, :profile_contacts, :profile_business_hours, :provider_specialities, :profile_languages
    resources :addresses, shallow: true do
      resources :address_business_hours
      resources :address_contacts
    end
  end
end
