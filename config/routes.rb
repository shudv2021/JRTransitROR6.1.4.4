Rails.application.routes.draw do

  get '/transits', to: 'transits#index'

  root 'pages#index'

end
