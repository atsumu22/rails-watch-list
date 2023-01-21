Rails.application.routes.draw do
  # resources :lists, only: [:index, :new, :show, :create] do
  #   resources :bookmarks, only: [:new, :create]
  # end
  # resources :bookmarks, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  resources :lists do
    resources :bookmarks, only: %i[new create]
    resources :reviews,  only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
  resources :reviews, only: %i[edit update destroy]
end
