Rails.application.routes.draw do
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   'cocktails',      to: 'cocktails#index'
  get   'cocktails/new',   to: 'cocktails#new', as: :cocktail_new
  post  'cocktails',      to: 'cocktails#create'
  get   'cocktails/:id',  to: 'cocktails#show', as: :cocktail
end
