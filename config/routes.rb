Rails.application.routes.draw do
  
  # get 'students#index'
  devise_for :users
  resources :students
  resources :teachers
  get "home/new"
  root to: "home#new"
end
