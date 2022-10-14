Rails.application.routes.draw do
  resources :modelos
  resources :monsters, only: [:index, :show]
  resources :tweets, exclude [:edit, :update]
  root "tweets#index"
  resolve("new_tweet_path") {route_for(:new)}
end