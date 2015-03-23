Rails.application.routes.draw do
  resources :rants, only: [:index, :create, :update, :destroy]
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'users'},
    skip: [:sessions, :passwords, :registrations]

  as :user do
    post '/users/sign_in' => 'sessions#create', as: :user_session
    post '/users' => 'users#create', as: :user_registration
  end
end
