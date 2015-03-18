Rails.application.routes.draw do
  resources :rants, only: [:index, :create, :update, :destroy]
end
