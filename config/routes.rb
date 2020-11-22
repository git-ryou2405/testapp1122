Rails.application.routes.draw do
  #root 'user#index'
  root 'top#top'
  
  get 'login', to: 'users#login_page'
  post 'login', to: 'users#login'
  post 'logout', to: 'users#logout'
  
  resources :users do
    resources :send_histories
  end
end
