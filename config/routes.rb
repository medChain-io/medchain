Rails.application.routes.draw do

  devise_for :medwallet_accounts

  get("/", { :controller => "application", :action => "homepage" })

  get("/profile/:id", { :controller => "application", :action => "profile" })


  resources :user_types
  resources :users
  resources :providers
  resources :statuses
  resources :care_plans
  resources :treatment_actions
  resources :payer_plans
  resources :payers
  resources :fee_schedules
  # resources :patients, only: 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
