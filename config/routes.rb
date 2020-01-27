Rails.application.routes.draw do
  root to: 'users#new'
  resources :products do
    resources :reviews, except: [:destroy]
  end
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
