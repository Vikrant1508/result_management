Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'index', to: 'home#index'
  delete 'index',to: 'home#index'
  get '/users/sign_out'
end
