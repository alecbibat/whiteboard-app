Whiteboards::Application.routes.draw do
  root to: 'static#index'

  resources :users

  resources :courses do
    resources :posts
  end

  resources :sessions, only: [:new, :create]
  delete 'logout' => 'sessions#destroy'
end
