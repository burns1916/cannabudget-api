Rails.application.routes.draw do
  resources :crops
  resources :farms
  resources :users
  
  get '/signup' => 'users#new'
  post 'signup' => 'users=>create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
