Rails.application.routes.draw do
  name space :admin do
    
  end

  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
