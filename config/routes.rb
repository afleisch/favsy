Favsy::Application.routes.draw do
  root to: "sites#index"
  resources :users, :sessions, :things
  
end
