Rails.application.routes.draw do

  get 'home', to: "static_pages#home"
  get 'about', to: "static_pages#about"

  root 'static_pages#home'

 match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
 match '/logout', to: 'sessions#destroy', via: [:get, :post]

end
