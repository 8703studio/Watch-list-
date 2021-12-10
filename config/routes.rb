Rails.application.routes.draw do
root to: 'lists#index'
  resources :movies do
    resources :bookmarks, only: [ :new, :create ]
    resources :lists, except: [:edit, :update]
  end

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end

  resources :bookmarks, only: [ :destroy ]
  resources :lists, only: [ :index, :show, :edit, :new, :update, :create, :delete ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
