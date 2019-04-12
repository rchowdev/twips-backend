Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/signup', to: "users#create"
      # get '/profile', to: "users#profile"
      get '/playlists/:playlist_id/clips/:clip_id', to: "clips#in_playlist"
      resources :playlists,  only: [:index, :create, :update, :destroy] do
        resources :clips, only: [:index, :create, :destroy]
      end
    end
  end
end
