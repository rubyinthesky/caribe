Rails.application.routes.draw do
  resources :hashts
  resources :categoria
  resources :posts
  resources :usuarios
  root 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
