Rails.application.routes.draw do
  devise_for :users
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  resources :pages
  resources :reviews do
    resources :repls, only: :create
  end
  # resources :repls

  # do
  #   resources :comments, only: :create
  #   collection do
  #     get 'search'
  #   end
  # end

  resources :animes
  resources :mangas
  resources :games
  resources :moves 

end
