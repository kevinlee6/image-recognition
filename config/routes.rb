Rails.application.routes.draw do
  post '/search', to: 'page#search', as: 'search'
  mount Commontator::Engine => '/commontator'
  devise_for :users
  resources :posts
  resources :tags
  get '/:profile', to: 'profile#index', as: :user
  post '/:profile', to: 'profile#post'
  get '/:profile/new', to: 'posts#new'
  post '/:profile/new', to: 'posts#create'
  root 'page#home'
  get '/page/faq', to: 'page#faq'
end
