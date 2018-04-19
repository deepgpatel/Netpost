Rails.application.routes.draw do
  resources :comments
  resources :votes
  resources :posts
  resources :subjects
  resources :users

  # get '/users/'
  # get '/comments/new' => 'post#new'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/login', to: 'sessions#create'

  delete '/subjects/:id/unfollow', to: 'subjects#unfollow', as: 'unfollow_subject'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
