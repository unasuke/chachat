Rails.application.routes.draw do
  root 'timeline#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
