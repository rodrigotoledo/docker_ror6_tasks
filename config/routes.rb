Rails.application.routes.draw do
  resources :tasks
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'authors#index'
end
