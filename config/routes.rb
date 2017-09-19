Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'static_pages#index'
  resources :chats, only: [:index, :new, :create]
end
