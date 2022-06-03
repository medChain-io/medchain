Rails.application.routes.draw do

  devise_for :medwallet_accounts

  get("/", { :controller => "application", :action => "homepage" })

  # get("/profile/:id", { :controller => "application", :action => "profile" })
  get("/profile/:id", { :controller => "application", :action => "profile", as: :profile })

  get("profile/care_plans/:id/edit", { :controller => "care_plans", :action => "edit"})


  resources :user_types
  resources :users
  resources :providers
  resources :statuses
  resources :care_plans do
    get "status/edit" => "care_plans#edit_status", as: :edit_status
  end
  resources :treatment_actions
  resources :payer_plans
  resources :payers
  resources :fee_schedules
  # resources :patients, only: 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
