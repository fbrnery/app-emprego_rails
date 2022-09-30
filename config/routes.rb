Rails.application.routes.draw do
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :users
  root 'home#index'
  get 'home/index'
  get 'vagas/new'
  resources :vagas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
