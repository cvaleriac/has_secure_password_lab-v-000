Rails.application.routes.draw do
  post '/create' => 'sessions#create'
  get '/new' => 'sessions#new'
  get '/home' => 'users#home'
  post '/destroy' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
