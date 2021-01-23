Rails.application.routes.draw do
  root to: 'wine_experience#index'
  devise_for :users
  resources :wine_experience

  # get 'wine_experience/index'
  # get 'wine_experience/show'
  # get 'wine_experience/new'
  # get 'wine_experience/create'
  # get 'wine_experience/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
