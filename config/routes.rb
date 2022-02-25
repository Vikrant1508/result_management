Rails.application.routes.draw do
  resources :students
  resources :teachers

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #   }

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions:      'users/sessions' }
  get "home/index"
  root "home#index"
end
