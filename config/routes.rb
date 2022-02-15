Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to:'sessions#show'
  post 'login', to:'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
