Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :experiences, only: [:index, :show] do
    resources :orders, only: [new:, :create]
  end
  resources :orders, only: [:index, :show]
end
