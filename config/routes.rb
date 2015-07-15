Rails.application.routes.draw do
  root :to => "home#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: ["show", "index"]
  resources :home, :only => [:index]

  resources :feats
  resources :obstacles
  resources :days
end
