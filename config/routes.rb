Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to:'sessions#show'
end
