Favsy::Application.routes.draw do
  root to: "sites#index"
  resources :users, :sessions, :things

  get '/signup' => 'users#new'
  delete '/signout', to: 'sessions#destroy'
  get'/signin' => 'sessions#new'
  
end
