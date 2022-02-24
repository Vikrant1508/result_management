Rails.application.routes.draw do
 	resources :students
  resources :teachers

  devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
  get "home/index"
  root "home#index"
  
  
 	
 	get '/teachers/index' => 'teachers#index'
 	get '/teachers/new' => 'teachers#new'
 	get '/students/index' => 'students#index'
 	get '/students/new' => 'students#new'

end
