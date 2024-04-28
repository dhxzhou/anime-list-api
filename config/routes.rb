Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/animes" => "animes#index"
  get "/animes/:id" => "animes#show"
  post "/animes" => "animes#create"
  patch "/animes/:id" => "animes#update"
  delete "/animes/:id" => "animes#destroy"

  get "/mangas" => "mangas#index"
  get "/mangas/:id" => "mangas#show"
  post "/mangas" => "mangas#create"
  patch "/mangas/:id" => "mangas#update"
  delete "/mangas/:id" => "mangas#destroy"
end
