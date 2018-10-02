Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :delete]

      get '/login', to: 'sessions#new', as: 'login'
      post '/login', to: 'sessions#create'

delete '/logout', to: 'sessions#delete', as: 'logout'
    end
  end
end
