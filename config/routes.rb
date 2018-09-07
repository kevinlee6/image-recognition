Rails.application.routes.draw do
  devise_for :users
  resources :tags
  get '/:username', to: 'profile#index'
  root 'page#home'
end
