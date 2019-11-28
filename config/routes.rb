Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # FOR RESTAURATNS
  resources :restaurants, only: [:index, :create, :new, :show] do
    # FOR REVIEWS
    resources :reviews, only: [:new, :create]
  end

  # FOR ADMIN
  namespace :admin do
    resources :restaurants
    resources :reviews
  end
end
