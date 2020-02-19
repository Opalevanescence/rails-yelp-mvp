Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Only the developer can update or deleve a restaurant
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[destroy]
end
