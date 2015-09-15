Whiteboards::Application.routes.draw do
  root to: 'static#index'

  resources :users

  resources :courses do
    resources :assignments
    resources :posts
    resources :resources
    resources :whiteboards
  end

  resources :posts do
    resources :comments
  end

  post '/courses/:course_id/assignments/new' => 'assignments#create'

  post 'post_comments' => 'comments#create'

  resources :sessions, only: [:new, :create]
  delete 'logout' => 'sessions#destroy'

  get 'calendar' => 'calendar#show'

  post 'subscribe' => 'subscribed_courses#create'
  delete 'unsubscribe' => 'subscribed_courses#destroy'
end
