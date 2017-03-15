Rails.application.routes.draw do
  get '/users/profile', to: 'users#profile'
  resources :users
  post '/authenticate', to: 'authentication#authenticate'
  resources :ta_application
  resources :courses
  get '/course/:id/applicants' => 'courses#applicants'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
