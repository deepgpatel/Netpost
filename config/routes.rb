Rails.application.routes.draw do
  resources :comments
  resources :votes
  resources :posts
  resources :subjects
  resources :users

  get '/comments/new' => 'post#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
