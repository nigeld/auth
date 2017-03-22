Rails.application.routes.draw do
  use_doorkeeper
  
  root "users#new"
  
  resources :courses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api, defaults: { format: "json" } do 
    resources :courses, controller: :courses, only: [:index, :show]
  end 
end
