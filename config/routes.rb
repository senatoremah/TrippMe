Rails.application.routes.draw do
 resources :photos

  devise_for :users
 root :to => "home#index"
end
