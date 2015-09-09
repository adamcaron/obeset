Rails.application.routes.draw do
  root 'schools#index'

  resources :schools, only: [:index, :show]
  resources :counties, only: [:index, :show]
end
