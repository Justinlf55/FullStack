Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do 
    resources :users, only: [:create, :update]
    resource :session, only: [:create, :destroy]
    resources :movies, only: [:index, :show]
    resources :genres, only: [:index, :show]
    resources :watchlists, only: [:index, :create, :destroy]
    resources :movie_genres, only: [:create]
  end

  root to: 'static_pages#root'
end
