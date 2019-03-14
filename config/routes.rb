Rails.application.routes.draw do
  get 'posts/index'
  get 'home/index'
  devise_for :users
  get "/" => "home#top"
  root :to => "home#top"
  get "index" => "posts#index"
  resources :posts
  resources :friends
  resources :profiles
  resources :vaccinations
  resources :medicines
  resources :home
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
