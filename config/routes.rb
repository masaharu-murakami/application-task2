Rails.application.routes.draw do
   devise_for :users
   root 'homes#top'
   get 'home/about' => 'homes#about'
   resources :users,only: [:show,:index,:edit,:update]
   resources :books,only: [:new, :create, :show, :edit, :update, :destroy] do
      resources :book_comments,onry: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]
   
   end
 end 