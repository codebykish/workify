Rails.application.routes.draw do

   root to: 'artists#index'

  # resources :artists
  resources :artists do
   resources :songs
 end

end
