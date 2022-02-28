Rails.application.routes.draw do
  resources :students
  resources :teachers

    get "/search" => "teachers#search"

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions:      'users/sessions' }
  get "home/index"
  root "home#index"
end
