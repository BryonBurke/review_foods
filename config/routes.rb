Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :products do
    resources :reviews, except: [:destroy]
  end
end
