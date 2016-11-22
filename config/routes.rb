Rails.application.routes.draw do
  get 'cards/new'

  get 'cards/edit'

  get 'cards/delete'

  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #7 standard crud routes  TODO: SAMPLE ROUTES TO BE UPDATED
  get '/alte_card', to: 'alte_card#index'
  get '/alte_card/new', to: 'alte_card#new'
  get '/alte_card/:id', to: 'alte_card#show'
  post '/alte_card/create', to: 'alte_card#create'
  get '/alte_card/:id/edit', to: 'alte_card#edit'
  patch '/alte_card/:id', to: 'alte_card#update'
  delete '/alte_card/:id', to: 'alte_card#delete'

  # Session Routes
  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  post '/session/new_user', to: 'session#new_user'


end
