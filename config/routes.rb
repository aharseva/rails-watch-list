Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# LISTS
# get 'lists', to: 'lists#index'
# get 'lists/new', to: 'lists#new', as: :new_list
# post 'lists', to: 'lists#create'
# get 'lists/:id', to: 'lists#show', as: :list

# # BOOKMARKS
# get 'bookmarks', to: 'bookmarks#new', as: :new_bookmark
# post 'bookmarks', to: 'bookmarks#create'
# delete 'bookmarks/:id', to: 'bookmarks#destroy'

  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :show]
  end
  resources :bookmarks, only: :destroy
  resources :lists, only: :destroy, as: :list_delete
end
