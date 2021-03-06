Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/zomg', to: 'movies#zomg'

  resources :movies, only: [:index, :show, :create]
  resources :customers, only: [:index, :show, :create]

  post 'rentals/checkout', to: 'rentals#checkout', as: 'checkout'

  post 'rentals/checkin', to: 'rentals#checkin', as: 'checkin'

  get 'rentals/overdue', to: 'rentals#overdue', as: 'overdue'

end
