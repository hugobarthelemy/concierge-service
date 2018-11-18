Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: 'pages#home'

  resources :headings, only: [:index]
  resources :users, only: [:index, :show]
  resources :demandes
end
