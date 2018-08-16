Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/new', to: 'cocktails#new'
  # get '/cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # post '/cocktails', to: 'cocktails#create'

  resources :cocktails do
    resources :doses
  end

  # get 'cocktails/:id/doses/new', to: 'doses#new'
  # post 'cocktails/:id/doses', to: 'doses#create'
end
