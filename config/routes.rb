Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books do
    resources :schedules
    resources :lists
    collection do
      get "search"
    end
  end
end
