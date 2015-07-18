Whiteboards::Application.routes.draw do
  root to: 'static#index'

  resources :users

  resources :courses
end
