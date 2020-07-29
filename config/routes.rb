Rails.application.routes.draw do
  resources :ppepisodes, except: [:index] 
  resources :people, only: [:show, :index]
  resources :episodes, only: [:show, :index]
  resources :planets, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
