Rails.application.routes.draw do
  # get 'pages/home'
  
  # get "pages/home"
 # get "pages#launch"

  root "pages#newhome"

  match '/contacts', to: 'contacts#new', via: 'get'
resources "contacts", only: [:new, :create]


end
