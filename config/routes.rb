Rails.application.routes.draw do
  devise_for :users
  # get '/users/sign_in'
  # root to: 'devise/sessions#new', as: 'user'
  resources :teachers
  get "teachers/index"
  root to: "teachers#index"
end
