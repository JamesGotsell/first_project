Rails.application.routes.draw do

  resources :comments
  resources :songs
  devise_for :users
  devise_scope :user do 
    root "devise/sessions#new"
  end

  
  # root "users#index"
  resources :users, only: [:index,:show]
  #root to: "registrations#new"
end
