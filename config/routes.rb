Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles
  resources :users, except:[:new]

  root 'pages#home'
  get 'about', to: 'pages#about'  
  get 'signup', to: 'users#new'
end
