Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:create, :new, :index, :show, :update, :destroy]
end
