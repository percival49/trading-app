Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  get '/admin/new', to: 'admin#new'
  post '/create_user', to: 'admin#create_user'
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :traders
  devise_for :users
end
