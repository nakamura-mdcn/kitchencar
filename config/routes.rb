Rails.application.routes.draw do
  devise_for :users
  root to: 'stores#index'
  resources :stores
end
