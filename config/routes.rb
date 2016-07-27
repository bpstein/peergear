Rails.application.routes.draw do

  get 'pages/home'

  root 'pages#home'

  devise_for :users
  resources :rooms 

end
