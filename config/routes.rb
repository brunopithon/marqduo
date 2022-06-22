Rails.application.routes.draw do
  resources :cities
  get 'welcome/index'
  resources :suppliers
  resources :service_providers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
