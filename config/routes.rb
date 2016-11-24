Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # Home page
  get '/', to: 'cards#index'

  # Start making a new card
  get '/cards', to: 'cards#new'
  post '/cards/create', to: 'cards#create'
  get '/success', to: 'cards#success'

  # edit / update card
  get '/cards/:id/edit', to: 'cards#edit'
  patch '/cards/:id', to: 'cards#update'

  get '/cards/:id/show', to: 'cards#show'
  get '/cards/:id/send', to: 'cards#send'


  # delete card
  delete '/cards/:id', to: 'cards#destroy'




  # Session Routes
  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  post '/session/new_user', to: 'session#new_user'


end
