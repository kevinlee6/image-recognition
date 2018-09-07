Rails.application.routes.draw do
  devise_for :users
  resources :tags
  get '/:username', to: 'profile#index'
  get '/:username', to: 'gallery#index'
  get '/:username', to: 'faq#index'
  root 'page#home'
end
