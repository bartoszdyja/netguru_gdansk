Rails.application.routes.draw do
get '/categories/:category_id/products', to: 'categories#show'
get '/users/profiles', to: 'users#index', as: 'users'
get '/users/profiles/:user_id', to: 'users#show', as: 'user'
devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
