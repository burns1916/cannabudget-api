Rails.application.routes.draw do
  root 'welcome#index' 
  post '/signup' => 'users#create'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/get_current_user' => 'sessions#get_current_user'
 

  resources :expenses
  resources :incomes
  resources :crops do
    resources :expenses
    resources :incomes
  end
  resources :farms do
    resources :crops
  end
  resources :users do
    resources :farms
  end



end
