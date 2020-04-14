Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :dogs
resources :users
resources :apps, only: [:index, :show]
get '/home', to: "application#home"
get '/about', to: "apps#about"
# get '/login', to: sessions#login
# post '/login', to :sessions#process_login
end
