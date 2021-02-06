Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :wine_experiences do
    resources :bookings, only: [:create, :destroy]
  end

end
