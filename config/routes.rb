Rails.application.routes.draw do
  root 'static_pages#index'
  resources :chats, only: [:index, :new, :create]
end
