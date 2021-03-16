Rails.application.routes.draw do
  # resources :answers
  # resources :questions
  # resources :rounds
  scope :quizzes do
    resources :rounds, only: [:create, :edit, :update, :destroy] do
      resources :questions, only: [:new, :create]
    end
  end

  resources :quizzes, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', sessions: 'users/sessions'  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#welcome"

  get '/home' => "users#home", as: :user_root # creates user_root_path

  # resources :users, only: [:show]
end
