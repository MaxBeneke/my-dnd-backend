Rails.application.routes.draw do
  # resources :backgrounds
  # resources :proficiency_lists
  # resources :characters
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/users/login', to: "users#login"
  post '/users/signup', to: "users#signup"
  patch '/users/:id', to: "users#update"

  get '/backgrounds/index', to: "backgrounds#index"

  post '/characters', to: "characters#create"
  
end
