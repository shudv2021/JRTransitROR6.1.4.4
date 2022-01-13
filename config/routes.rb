Rails.application.routes.draw do

  root 'pages#index'
  
  devise_for :users, path: :transit, path_names: {sign_in: :login, sign_out: :exit}
  
  # resources :transits, only: [:index, :new, :create, :edit, :update, :show, :destory]
  
  # get '/transits', to: 'transits#index'
  # get '/transits/new', to: 'transits#new'
  # post '/transits', to: 'transits#create'
  # get '/transits/:id/edit', to: 'transits#edit'
  
  resources :users do
    resources :transits, shallow: true do
    end
    
  end
  
  resources :transits, only: :index do
    #Альтернативный способ записи
    # member do
    #   post :calculate
    # end
    post :calculate, on: :member
  end
    
end
