Rails.application.routes.draw do

  delete '/sessions' => "sessions#destroy"
  delete '/posts/:id' => "posts#destroy"
  patch '/posts' => "posts#update"
  get '/posts/new' => "posts#new"
  post '/posts' => "posts#create"
  get '/posts/:id' => "posts#show"
  get '/posts/:id/edit' => "posts#edit"
  get '/posts' => "posts#index"
  post '/sessions' => "sessions#create"
  get '/sessions' => "sessions#new"
  post '/users' => 'users#create'
  get '/users/show' => "users#show"
  get '/users/index' => "users#index"
  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
