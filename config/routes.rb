Rails.application.routes.draw do
 
  devise_for :users,:teachers
  devise_for :students, path: 'students', controllers: { sessions: "students/sessions"}
  resources :students
  resources :teachers
  get "home/index"
  root to: "home#index"
  root to: "students/registrations#new"
end
