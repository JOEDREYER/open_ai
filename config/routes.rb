Rails.application.routes.draw do
  get 'home/index'
  get 'chat/chat'
  post 'chat', to: 'chat#chat'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
