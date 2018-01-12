Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :tasks
      resources :comments
      resources :likes
      post "/auth", to: "sessions#create"
      post "/current_user", to: "sessions#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
