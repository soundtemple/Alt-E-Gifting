Rails.application.routes.draw do
  # #7 standard crud routes  TODO: SAMPLE ROUTES TO BE UPDATED
  # get '/cards', to: 'cards#index'
  # get '/cards/new', to: 'cards#new'
  # get '/cards/:id', to: 'cards#show'
  # post '/cards/create', to: 'cards#create'
  # get '/cards/:id/edit', to: 'cards#edit'
  # patch '/cards/:id', to: 'cards#update'
  # delete '/cards/:id', to: 'cards#delete'
  get 'cards', to: 'cards#new'

  get 'cards/edit'

  get 'cards/delete'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # Session Routes
  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  post '/session/new_user', to: 'session#new_user'


end
