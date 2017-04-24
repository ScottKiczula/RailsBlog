Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :articles do
    resources :comments
  end

  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  
end
