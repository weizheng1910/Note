Rails.application.routes.draw do
  get '/' => 'onepage#index'
  get '/entry' => 'onepage#show'
  post '/entry' => 'onepage#post'
  post '/delete' => 'onepage#delete'
  post '/remove' => 'onepage#remove'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
