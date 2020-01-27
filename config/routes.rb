Rails.application.routes.draw do
  resources:users
  root to: 'users#index'
  resources :products do
    resources :reviews, except: [:destroy]
  end
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
