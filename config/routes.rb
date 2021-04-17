Rails.application.routes.draw do
  resources :appartaments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index', to: 'home#index', as: 'index'
  get '/bibbione', to: 'home#bibbione', as: 'bibbione'
  get '/paluda', to: 'home#paluda', as: 'paluda'
  get '/jesolo', to: 'home#jesolo', as: 'jesolo'
  get '/appartments', to: 'home#appartments', as: 'appartments'

  root 'home#index'
end
