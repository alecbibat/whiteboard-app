Whiteboards::Application.routes.draw do
  root to: 'static#index'

  resources :users

  resources :courses do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  post 'post_comments' => 'comments#create'

  resources :sessions, only: [:new, :create]
  delete 'logout' => 'sessions#destroy'

  get 'calendar' => 'static#calendar'

  post 'subscribe' => 'subscribed_courses#create'
  delete 'unsubscribe' => 'subscribed_courses#destroy'
end
