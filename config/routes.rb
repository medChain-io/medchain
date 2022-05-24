Rails.application.routes.draw do
  resources :patients
  devise_for :medwallet_accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
