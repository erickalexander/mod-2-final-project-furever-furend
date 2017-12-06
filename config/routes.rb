Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show]
  resources :jobs
  resources :homes
  resources :dogs

  get "signup", to: "users#new", as: 'signup'
  get "users/:id/dogs", to: "users#dogs", as: 'user_dogs'
  post "users/:id/dogs", to: "users#assign_dogs"
  get "/signin", to: "sessions#new", as: 'signin'
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy", as: "signout"
end
