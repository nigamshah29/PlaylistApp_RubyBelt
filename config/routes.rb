Rails.application.routes.draw do
  root 'users#index'

  post 'additions/create/:playlist_id/:song_id' => 'additions#create'

  delete 'additions/:id' => 'additions#destroy'

  get '/dashboard/:id' => 'playlists#dashboard'

  post 'songs/create' => 'songs#create'

  get '/songs/:id' => 'songs#show'

  get 'welcome' => 'users#welcome'

  post 'login' => 'users#login'

  post 'register' => 'users#register'

  get 'logout' => 'users#logout'

  get '/playlist/:user_id' => 'users#playlist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
