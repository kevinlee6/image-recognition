Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :tags
  get '/:profile', to: 'profile#index'
  get '/:profile/new', to: 'posts#new'
  post '/:profile/new', to: 'posts#create'
  root 'page#home'
  get '/page/faq', to: 'page#faq'
  post '/search', to: 'page#search', as: 'search'
  get '/page/dashboard', to: 'page#dashboard'
end
