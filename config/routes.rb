Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:show, :index, :edit, :update]
 
  root to: 'homes#top'
  resources :homes
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
