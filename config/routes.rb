Rails.application.routes.draw do
  root 'welcome#index' 
  get '/signup' => 'users#new'
  post 'signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
 

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
