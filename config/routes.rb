Rails.application.routes.draw do
  resources :videos
  root to: 'videos#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
