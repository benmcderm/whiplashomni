Rails.application.routes.draw do
  root 'welcome#index'
  get '/orders', to: 'orders#index'
  get '/login', :to => 'sessions#new', :as => :login
  resources :sessions, only: :index
  get '/auth/:provider/callback', :to => 'sessions#create'
  # match '/auth/failure', :to => 'sessions#failure', via: [:get, :post]
end
