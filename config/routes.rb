Rails.application.routes.draw do
  root to: "stores#index"
  resources :stores
end
