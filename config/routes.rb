Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'

  resources :contacts, only:[:create], as: 'contacts'
  get 'pages/realtor', as: 'agent_immobilier'
  get 'pages/photo', as: 'photo'
  get 'pages/concept', as: 'concept'

  resources :prices

  resources :sales


end