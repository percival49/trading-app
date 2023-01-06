Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  get '/admin/new', to: 'admin#new'
  post '/admin', to: 'admin#create'

  root "posts#index"
  devise_for :users
  resources :posts

  resources :users
end
