Rails.application.routes.draw do
  resources :students
  resources :teachers  
  resources :results
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "/search" => "results#search"
  
  get "home/about", to: "home#about"
  get "home/new", to: "home#new"

  get "students/index", to: "students#index"

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions:      'users/sessions' }
  get "home/index"
  root "home#index"
end
