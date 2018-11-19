Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'videos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [:show, :index] do
    resources :questions, only: [:show, :index] do
      resources :answers, only: [:show, :index]
    end
  end
  resources :users do
    resources :bookmarks
  end
end
