Rails.application.routes.draw do
  get '/users/profile', to: 'users#profile'
  resources :users
  post '/authenticate', to: 'authentication#authenticate'
  resources :ta_application
  get '/courses/:id/applicants', to: 'courses#applicants'
  get '/courses/:id/applications', to: 'courses#applications'
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
