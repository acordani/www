Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  match "*path", to: "application#render_404", via: :all


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

  get "blog", to: 'posts#index', as: :blog
  get "blog/:slug", to: 'posts#show', as: :post

  resources :prices

  resources :sales

  resources :clients

  get "/sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap


end