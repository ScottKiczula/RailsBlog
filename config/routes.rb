Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  resources :user
  
  root 'welcome#index'

end
