Rails.application.routes.draw do
  resources :transactions
  root 'welcome#index' 
  post '/signup' => 'users#create'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/get_current_user' => 'sessions#get_current_user'
 

  resources :crops 
  resources :farms do
    resources :crops
  end
  resources :users do
    resources :farms
  end



end
