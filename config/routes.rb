Rails.application.routes.draw do
  resources :ppepisodes
  resources :people
  resources :episodes
  resources :planets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
