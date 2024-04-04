Rails.application.routes.draw do
  get 'welcome/index'
  resources :agendas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"



    # ##################################################
    # #              RESUMO SOBRE ROUTES               #
    # ##################################################
    
    # HTTP Verb ||    Path     || Controler#Action ||  Used for 
    #* GET      ||   /photos    ||  photos#index  || exibir uma lista de todas as fotos
    #* GET      ||   /photos/new   ||  photos#new  || retorna um formulário HTML para criar uma nova foto
    #? POST     ||   /photos    ||  photos#create  || criar uma nova foto
    #* GET      ||   /photos/:id   ||  photos#show  || exibir uma foto específica
    #* GET      ||   /photos/:id/edit   ||  photos#edit  || retorna um formulário HTML para editar uma foto
    #? PATCH/PUT ||   /photos/:id   ||  photos#update  || atualiza uma foto específica
    #! DELETE   ||   /photos/:id   ||  photos#destroy  || deletar uma foto específica 

    
=begin
  #TODO |  resources :photo 
  photos_path retorna /photos
  new_photo_path retorna /photos/new
  edit_photo_path(:id) retorna /photos/:id/edit(por exemplo, edit_photo_path(10)retorna /photos/10/edit)
  photo_path(:id) retorna /photos/:id(por exemplo, photo_path(10)retorna /photos/10)
  Cada um desses auxiliares possui um (_url) auxiliar correspondente (como photos_url) que retorna o mesmo caminho prefixado com o host, porta e prefixo de caminho atuais.

=end
    
end
