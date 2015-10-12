Rails.application.routes.draw do
  root 'home#index'

  get '/login' => 'sessions#new', as: :new_session
  post '/login' => 'sessions#create', as: :create_session
  get '/logout' => 'sessions#destroy', as: :destroy_session

  get '/signup' => 'users#new', as: :signup
  post '/users' => 'users#create'
end
