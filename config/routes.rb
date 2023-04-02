Rails.application.routes.draw do
  get '/admin', to: 'admin#index'
  get '/admin/new', to: 'admin#new'
  post '/create_user', to: 'admin#create_user'
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get '/admin/trader_list', to: 'admin#trader_list'
  get '/admin/trader_details/:id', to: 'admin#trader_details'
  get '/admin/trader/:id/edit', to: 'admin#edit_trader'
  put '/admin/trader_list', to: 'admin#update_trader'


  resources :traders


  default_url_options :host => 'localhost'

end
