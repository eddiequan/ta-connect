Rails.application.routes.draw do
  get '/users/profile', to: 'users#profile'
  resources :users
  post '/authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
