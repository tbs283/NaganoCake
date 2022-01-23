Rails.application.routes.draw do
  scope module: :public do
    get "/" => "homes#top"
    get "/about" => "homes#about"
    resources :items, only: [:show, :index]
    resources :customers, only: [:show, :edit, :update]
    get "leave" => "customers#leave"
    patch "customers" => "customers#withdrawal"
    resources :cart_items, only: [:index, :update, :destroy, :create]
    delete "cart_items/:id" => "cart_items#remove"
    resources :orders, only: [:new, :create, :index, :show]
    post "orders/confirm" => "orders#confirm"
    post "orders/thanks" => "orders#thanks"
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    devise_for :customers
  end
  
  namespace :admin do
    get "/" => "homes#top"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
