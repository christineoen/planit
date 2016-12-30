Rails.application.routes.draw do
  resources :trips do
    resources :destinations
    resources :users
  end
  resources :destinations
  resources :users do
    resources :trips
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
