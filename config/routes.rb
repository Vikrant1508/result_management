Rails.application.routes.draw do
  resources :teachers
  devise_for :users
  get "teachers/index"
  root to: "teachers#index"
end
