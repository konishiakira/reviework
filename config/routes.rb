Rails.application.routes.draw do
  devise_for :users
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  resources :pages
  resources :reviews

  # get 'pages/pages', to: 'pages#anime'
  # get 'pages/pages', to: 'pages#manga'
  # get 'pages/pages', to: 'pages#game'
  # get 'pages/pages', to: 'pages#move'

  # get 'posts/new', to: 'posts#new'
  resources :animes
  resources :mangas
  resources :games
  resources :moves 

end
