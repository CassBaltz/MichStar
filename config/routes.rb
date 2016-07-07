Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :restaurants, only: [:index, :show]
    resources :reviews, only: [:create, :show, :destroy, :update]
    get 'user/profile', :to => 'users#profile'
    resources :reservations, only: [:create, :show]
  end

  root to: "static_pages#root"
end
