Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  resources :categories, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :pages
  resources :order_items, path: '/cart/items'
  get 'tags/:tags/:id', to: 'categories#show', as: :tag
  get 'categories/index'
  get 'categories/show'
  get '/cart', to: 'order_items#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this is empty but just to have a root file

  root 'products#index'
end
