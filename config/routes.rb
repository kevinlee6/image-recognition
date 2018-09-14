Rails.application.routes.draw do
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
  post '/search', to: 'page#search', as: 'search'
end
