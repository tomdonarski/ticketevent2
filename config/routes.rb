Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show]
      resources :purchases, only: [:create]
    end
  end
end
