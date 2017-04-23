Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  get 'signup' => 'users#new'

  resources :users
  
  root 'welcome#index'

end
