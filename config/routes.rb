Rails.application.routes.draw do
  resources :rants, only: [:index, :create]
end
