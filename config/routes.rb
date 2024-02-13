Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :users, only: :show
  resources :books do
    resources :schedules
    resources :lists
    resource :likes, only: [:create, :destroy]
    collection do
      get "search"
    end
  end
end
