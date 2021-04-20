Rails.application.routes.draw do
  resources :private_trash_talks
  resources :trash_talks
  resources :challenges
  resources :attempts
  resources :athletes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end