Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :articles do
    resources :comments
  end

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
