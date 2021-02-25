Rails.application.routes.draw do
  get 'specialties/index'
  get 'specialties/new'
  get 'specialties/create'
  get 'specialties/show'
  get 'specialties/edit'
  get 'specialties/update'
  get 'specialties/destroy'
  get 'provider_specialties/index'
  get 'provider_specialties/new'
  get 'provider_specialties/create'
  get 'provider_specialties/show'
  get 'provider_specialties/edit'
  get 'provider_specialties/update'
  get 'provider_specialties/destroy'
  get 'public_profile/index'
  get 'public_profile/new'
  get 'public_profile/create'
  get 'public_profile/show'
  get 'public_profile/edit'
  get 'public_profile/update'
  get 'public_profile/destroy'
  get 'profile_contacts/index'
  get 'profile_contacts/new'
  get 'profile_contacts/create'
  get 'profile_contacts/show'
  get 'profile_contacts/edit'
  get 'profile_contacts/update'
  get 'profile_contacts/destroy'
  get 'profile_business_hours/index'
  get 'profile_business_hours/new'
  get 'profile_business_hours/create'
  get 'profile_business_hours/show'
  get 'profile_business_hours/edit'
  get 'profile_business_hours/update'
  get 'profile_business_hours/destroy'
  get 'address_business_hours/index'
  get 'address_business_hours/new'
  get 'address_business_hours/create'
  get 'address_business_hours/show'
  get 'address_business_hours/edit'
  get 'address_business_hours/update'
  get 'address_business_hours/destroy'
  get 'address_contacts/index'
  get 'address_contacts/new'
  get 'address_contacts/create'
  get 'address_contacts/show'
  get 'address_contacts/edit'
  get 'address_contacts/update'
  get 'address_contacts/destroy'
  get 'addresses/index'
  get 'addresses/new'
  get 'addresses/create'
  get 'addresses/show'
  get 'addresses/edit'
  get 'addresses/update'
  get 'addresses/destroy'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register', sign_out: 'logout', edit: 'profile' }
  # Public pages
  root to: 'pages#home'
  get 'about', to: 'pages#about'

  # Routes accessible by all users:
  resources :areas, only: %i[index, show] do
    resources :specialities, only: %i[index, show]
  end
  resources :public_profiles, shallow: true do
    resources :reviews, :favourites, :links, :profile_contacts, :profile_business_hours
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
