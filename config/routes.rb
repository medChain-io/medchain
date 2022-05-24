Rails.application.routes.draw do
  resources :providers
  resources :statuses
  resources :care_plans
  resources :treatment_actions
  resources :payer_plans
  resources :payers
  resources :fee_schedules
  resources :patients
  devise_for :medwallet_accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
