Rails.application.routes.draw do
  root to: 'wine_experiences#index'
  devise_for :users
  resources :wine_experiences

end
