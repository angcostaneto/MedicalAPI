Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'user/:id', to: 'users#get', as: 'user'
  post 'user/create', to: 'users#create', as: 'user_create'
end
