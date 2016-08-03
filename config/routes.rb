Rails.application.routes.draw do
  root 'welcome#index'
  post '/auth/:provider/callback', to: 'sessions#create'
  get '/orders', to: 'orders#index'
end
