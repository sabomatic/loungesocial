Rails.application.routes.draw do

  root to: 'hotspots#welcome'
  post '/find', to: 'hotspots#find', as: 'find'

  resources :hotspots
end
