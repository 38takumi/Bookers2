Rails.application.routes.draw do
  # get 'books/index'

  # get 'books/show'

  # get 'books/new'

  # get 'books/edit'

  devise_for :users
  resources :books
  resources :user, only: [:new, :create, :index, :edit, :update]
  # do  ユーザ画像は設定のみ
  #   resources :user_image, only: [:new, :create, :index, :edit, :update]
  # end
   
  # <!-- root to:'books#index' -->
  root to: 'homes#top'
  resources :homes
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
