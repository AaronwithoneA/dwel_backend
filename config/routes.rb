Rails.application.routes.draw do

  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [ :show, :create ]
    resources :groups, only: [ :index, :show, :create, :update]
    resource :session, only: [ :create, :destroy ]
    resources :todos, only: [ :index, :create, :update ]
    resources :comments, only: [ :index, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
