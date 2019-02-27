Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    resources :orders, only: [:create, :show] # see doc on shallow
  end
  # resources :orders, only: [:index]

  get 'dashboard', to: 'experiences#preferences'
  get 'dashboard', to: 'orders#dashboard'
end
