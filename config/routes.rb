Rails.application.routes.draw do

  get 'home', to: "static_pages#home"
  get 'about', to: "static_pages#about"
  get 'dashboard', to: "static_pages#dashboard"

  root 'static_pages#home'

 match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
 match '/signout', to: 'sessions#destroy', via: [:get, :post]

end
