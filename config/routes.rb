Rails.application.routes.draw do
  resources :topics
  resources :tags
  resources :tendencies
  root "tendencies#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
