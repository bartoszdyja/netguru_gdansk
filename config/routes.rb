Rails.application.routes.draw do
get '/categories/:category_id/products', to: 'categories#show'
get '/users/', to: 'users#index'
devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
