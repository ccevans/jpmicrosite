Rails.application.routes.draw do
  # get 'pages/home'
  
  get "pages/home"
  get "pages/newhome"

  root "pages#launch"

  match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]


end
