Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :rooms, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:new, :show, :index]

end
