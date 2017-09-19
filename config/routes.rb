Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :chats, only: [:index, :new, :create]
end
