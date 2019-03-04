Rails.application.routes.draw do
  get 'posts/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create]
  resources :experiences, only: [:index, :show] do
    resources :orders, only: [:show, :create] # see doc on shallow
  end
  # resources :orders, only: [:index]
  resources :users, only: [:new]

  resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end

  get 'dashboard', to: 'orders#dashboard'

  # require "sidekiq/web"
  # authenticate :user, lambda { |u| u } do
  #   mount Sidekiq::Web => '/sidekiq'
  # end
end
