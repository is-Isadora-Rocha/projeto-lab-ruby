Rails.application.routes.draw do
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
    get '/agendas/:id/edit', to: 'agendas#edit'
    put '/agendas/:id', to: 'agendas#update'
    delete '/agendas/:id', to: 'agendas#destroy', as: :agenda
  # }


#TODO:  ####   Observação    ####

#? => get '/agendas/new', to: 'agendas#new'
#! Showing /home/ccn/rails/projeto/app/views/agendas/index.html.erb where line #14 raised:
#! ocorreu o seguinte erro: undefined local variable or method `new_agenda_path': 
#! <%= link_to "New agenda", new_agenda_path %>

#* A solução é: get '/agendas/new', to: 'agendas#new', as: 'new_agenda'
#* para que a rota identifique o pacote que está sendo utilizado

end
