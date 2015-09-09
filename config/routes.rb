Rails.application.routes.draw do
  root 'schools#index'

  resources :schools, only: [:index, :show, :new, :create]
  resources :counties, only: [:index, :show]
end
