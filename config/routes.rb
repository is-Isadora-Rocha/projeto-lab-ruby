Rails.application.routes.draw do
  resources :pedidos
  resources :medicos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"

  #resources :agendas { 
    get '/agendas', to: 'agendas#index'
    get '/agendas/new', to: 'agendas#new', as: 'new_agenda'
    post '/agendas', to: 'agendas#create'
    get '/agendas/:id', to: 'agendas#show'
    get '/agendas/:id/edit', to: 'agendas#edit', as: :edit_agenda
    #aqui em edit ocorreu o mesmo erro de undefind local... method, foi colocado o as: :edit_agenda
    put '/agendas/:id', to: 'agendas#update'
    delete '/agendas/:id', to: 'agendas#destroy', as: :agenda
  # }

end
