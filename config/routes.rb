Rails.application.routes.draw do
  resources :cheats, only: :index
end
