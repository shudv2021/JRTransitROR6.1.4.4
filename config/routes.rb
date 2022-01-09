Rails.application.routes.draw do
resources :transits, only: [:index, :new, :create, :edit, :update, :show, :destory]

  # get '/transits', to: 'transits#index'
  # get '/transits/new', to: 'transits#new'
  # post '/transits', to: 'transits#create'
  # get '/transits/:id/edit', to: 'transits#edit'
  
  root 'pages#index'

end
