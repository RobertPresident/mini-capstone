Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index' 
  get '/products' => 'products#index'
  get '/products/random' => 'products#random'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'

  get '/products/:id' => 'products#show'

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'


  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  get '/suppliers/:id' => 'suppliers#show'

  get '/suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'

  delete '/suppliers/:id' => 'suppliers#destroy'

  # get '/orders' => 'orders#index'
  # get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'

  get '/orders/:id' => 'orders#show'

  # get '/orders/:id/edit' => 'orders#edit'
  # patch '/orders/:id' => 'orders#update'

  # delete '/orders/:id' => 'orders#destroy'

  get '/cart' => 'carted_products#index'
  # get '/carted_products/new' => 'carted_products#new'
  post '/carted_products' => 'carted_products#create'

  # get '/carted_products/:id' => 'carted_products#show'

  # get '/carted_products/:id/edit' => 'carted_products#edit'
  # patch '/carted_products/:id' => 'carted_products#update'

  delete '/carted_products/:id' => 'carted_products#destroy'

  
end
