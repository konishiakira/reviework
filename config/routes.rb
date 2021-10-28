Rails.application.routes.draw do
  devise_for :users
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  resources :pages
  resources :reviews do
    resources :repls, only: :create
  end

  post "crs/:page_id/create", to: "crs#create", constraints: {page_id: /\d+/}, as: :crs_create
  post "crs/:page_id/delete", to: "crs#delete", constraints: {page_id: /\d+/}, as: :crs_delete

  post "cools/:page_id/create", to: "cools#create", constraints: {page_id: /\d+/}, as: :cools_create
  post "cools/:page_id/delete", to: "cools#delete", constraints: {page_id: /\d+/}, as: :cools_delete

  post "cutes/:page_id/create", to: "cutes#create", constraints: {page_id: /\d+/}, as: :cutes_create
  post "cutes/:page_id/delete", to: "cutes#delete", constraints: {page_id: /\d+/}, as: :cutes_delete

  post "scareds/:page_id/create", to: "scareds#create", constraints: {page_id: /\d+/}, as: :scareds_create
  post "scareds/:page_id/delete", to: "scareds#delete", constraints: {page_id: /\d+/}, as: :scareds_delete

  post "healings/:page_id/create", to: "healings#create", constraints: {page_id: /\d+/}, as: :healings_create
  post "healings/:page_id/delete", to: "healings#delete", constraints: {page_id: /\d+/}, as: :healings_delete

  post "funs/:page_id/create", to: "funs#create", constraints: {page_id: /\d+/}, as: :funs_create
  post "funs/:page_id/delete", to: "funs#delete", constraints: {page_id: /\d+/}, as: :funs_delete

  
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
