Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  get '/admin/new', to: 'admin#new'
  post '/create_user', to: 'admin#create_user'

  root "posts#index"
  resources :traders
  devise_for :users
  resources :posts
end
