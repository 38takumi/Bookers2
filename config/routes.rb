Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :books
  resources :users, only: [:show, :index, :edit, :update]
  get 'homes/about' => 'homes#about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
