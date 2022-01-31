Rails.application.routes.draw do
  
  # get 'students#index'
  devise_for :users,:students,:teachers
  resources :students
  resources :teachers
  get "home/index"
  root to: "home#index"
end
