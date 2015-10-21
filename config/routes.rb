Rails.application.routes.draw do
  # get 'pages/home'
  
  get "pages/home"

  root "pages#launch"


end
