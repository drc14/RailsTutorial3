Rails.application.routes.draw do

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/restaurant_signup', to: 'restaurant#new'
  post '/restaurant_signup', to: 'restaurant#create'
  get '/restaurants', to: 'restaurant#show'
  get '/average_restaurant_rating', to: 'restaurant#show_average_rating'

  resources :users
  resources :rates
end