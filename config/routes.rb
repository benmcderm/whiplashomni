Rails.application.routes.draw do
  root 'orders#index'
  post '/auth/:provider/callback', to: 'sessions#create'
end
