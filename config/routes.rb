Rails.application.routes.draw do
  resources :messages
  devise_for :users


  # get 'home/index'
  root to:"home#index"
  get 'profile',to:"home#profile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
