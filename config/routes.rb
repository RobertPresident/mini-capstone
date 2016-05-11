Rails.application.routes.draw do
  get '/one' => 'products#one'
  get 'many' => 'products#many'
end
