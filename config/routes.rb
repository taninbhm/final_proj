Rails.application.routes.draw do
  devise_for :users
  get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this is empty but just to have a root file
  root 'store#index'
end
