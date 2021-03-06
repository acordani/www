Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  


  # config/static_routes.yml
  STATIC_ROUTES.each do |template, locale_paths|
    locale_paths.each do |locale, page|
      get page => "pages##{template}", template: template, locale: locale.to_sym, as: "#{template}_#{locale.to_s.underscore}".to_sym
    end
  end

  resources :contacts, only:[:create], as: 'contacts'
  get 'pages/realtor', as: 'agent_immobilier'
  get 'pages/photo', as: 'photo'
  get 'pages/concept', as: 'concept'
  get 'pages/cv', as: 'cv'
  get 'pages/nl'
  get 'pages/plandusite'
  get 'pages/agenceimmobiliere'
  get 'pages/estimationgratuite'
  get 'pages/formation'

  get "blog", to: 'posts#index', as: :blog
  get "blog/:slug", to: 'posts#show', as: :post

  resources :prices
  resources :partners

  resources :sales do
    resources :link_partners
  end

  namespace :admin do
    resources :lands
  end

  resources :lands, only: [:index, :show, :destroy] do
    collection { post :import }
  end

  resources :estimations, only: [:index, :show, :destroy] do
    collection { post :import }
  end

  resources :clients
  resources :estimations

  get "/sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap

  # SEO
  get 'robots', to: 'pages#robots'


end