Rails.application.routes.draw do
  resources  :users do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "search/index"
  # resources :mails

  get 'admin' => 'admin#index'
  get 'search' => 'search#index'
  get 'logout' => 'sessions#destroy'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "sessions/create"
  get "sessions/destroy"

  # resources :user1s

  # get "search/index"
  # post "search/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'sessions#create', as: 'index'
end
