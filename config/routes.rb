Rails.application.routes.draw do
  resources :users
  root to: 'home#index'
  get 'items/new'
  get 'items/create'
  get 'items/show'
  post '/home', to: 'items#send'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
