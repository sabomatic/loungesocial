Rails.application.routes.draw do

  resources :hotspots

  get 'screens/landing'

  get 'screens/create'

  get 'screens/status'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
