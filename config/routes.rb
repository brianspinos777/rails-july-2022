Rails.application.routes.draw do
  resources :doctors
  resources :appointments
  resources :patients
  resources :comments
  resources :posts
  
  devise_for :users

  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  get 'static_pages/form_example_page'
  get 'static_pages/bootstrap_example_page'

  resources :users

  root "static_pages#landing_page"

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
