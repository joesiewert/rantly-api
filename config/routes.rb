Rails.application.routes.draw do
  resources :rants, only: [:index, :create, :update, :destroy]
  devise_for :users, controllers: {sessions: 'sessions'}
end
