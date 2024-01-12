Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books do
    resources :schedules do
    end
    resources :lists do
    end
  end
end
