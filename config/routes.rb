Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'users/show'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all


  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos, only: [:show, :index] do
    resources :answer_users, only: [:create]
  end

  resources :users, only: [:show, :index]  do
    collection do
      get 'edit_profile'
      patch 'update_profile'
    end
    resources :bookmarks, only: [:index, :create]
  end

  resources :challenges, only: [:index, :show, :create]


  # resources :users, only: :show do

  # end

  resources :bookmarks, only: [:destroy, :update]
  get 'subscriptions/new', to: 'subscriptions#new'
  delete 'subscriptions/cancel' => 'subscriptions#cancel'
  post 'stripe_checkout' => 'subscriptions#stripe_checkout'
  post 'subscription_checkout' => 'subscriptions#subscription_checkout'
  post 'webhooks' => 'subscriptions#webhooks'
end
