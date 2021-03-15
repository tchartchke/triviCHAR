Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :rounds
  resources :quizzes
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions'  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#welcome"

  get '/home' => "users#home", as: :user_root # creates user_root_path

  # resources :users, only: [:show]
end
