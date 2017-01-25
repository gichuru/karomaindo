Rails.application.routes.draw do
  resources :listings
  get 'pages/about'

  get 'pages/contact'

  get 'pages/faq'
  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
