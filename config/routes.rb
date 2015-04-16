Rails.application.routes.draw do
  resources :comments, except: [:show]
  resources :songs
  devise_for :users
  # devise_scope :user do 
  #   root "devise/sessions#new"
  # end
  HighVoltage.configure do |config|
    config.home_page = 'home'
  end
  # root "users#index"
  resources :users, only: [:index,:show]
  #root to: "registrations#new"
end
