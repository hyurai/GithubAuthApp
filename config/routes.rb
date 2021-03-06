Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: "users/registrations"
  }
  root 'tweets#index'
  resources :tweets
  resources :users,only:[:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
