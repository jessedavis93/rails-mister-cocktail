Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/show'

  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new', as: :cocktail_new
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :dose_new
  post 'cocktails/:cocktail_id/doses', to: 'doses#create'

  delete'doses/:id', to: 'doses#destroy'
end
