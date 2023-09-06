Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bakeries
  resources :users
  post "/create_menu", to: 'menu_items#create'
  post "/category", to: 'categories#create'
  post "/items", to: 'categories#items'

end

