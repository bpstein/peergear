Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users

  # devise_for  :users, 
  #             :path => '', 
  #             :path_names => {
  #               :sign_in => 'login', 
  #               :sign_out => 'logout', 
  #               :edit => 'profile'},
  #             :controllers => {
  #               :omniauth_callbacks => 'users/omniauth_callbacks',
  #               :registrations => 'registrations'
  #                             }
  resources :rooms 
  resources :photos

  get '/preload' => 'reservations#preload'
  get '/preview' => 'reservations#preview'

  get '/your_trips' => 'reservations#your_trips'
  get '/your_reservations' => 'reservations#your_reservations'

  post '/notify' => 'reservations#notify'
  post '/your_trips' => 'reservations#your_trips'

  get '/search' => 'pages#search'

end
