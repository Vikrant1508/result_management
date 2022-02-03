Rails.application.routes.draw do
 
  devise_for :users
  	devise_scope :user do
  	get 'login', to: 'students/sessions#new'
	end
  resources :students
  resources :teachers
  get "home/index"
  root to: "home#index"
end
