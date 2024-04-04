# SOBRE O PROJETO PROJETOS 🤓

Ainda não existe um objetivo final desse projeto, o propósito dele é abranger o essencial de Ruby on Rails em elevar meus níveis de aprendizagem, adicionando o necessário para torná-lo uma aplicação quase completa. 

### Criação
`rails new PROJETO -d mysql`

⚠️ Lembrar-se de inserir a senha do banco de dados no **database.yml**

`rails db:create`

### Criação do Scaffold de Agenda

`rails g scaffold Annotation paciente medico dtHoraConsulta:date`

** Agenda = letra maiúscula e no singular ⇒ ***model*** 
** id é gerado automaticamente 

**⚠️ Caso queira criar mais entidades, utilizar o scaffold novamente.** 

### Controller

`rails g controller welcome index`

*Dentro do controller Welcome, tem-se a action Index*

Modifica o index do welcome como quiser

---

Tela de boas-vindas, no qual o usuário vai escolher o que deve fazer atraves de três botões: 

**Cadastrar Agendamento → Lista de Agendamentos → Info dos Médicos** 

---

### Rotas

- root welcome#index
- get '/route', to: 'controller#method'
---

 # ##################################################
 # #              RESUMO SOBRE ROUTES               #
 # ##################################################
    
    # HTTP Verb ||    Path       ||   Controler#Action  ||  Used for 
    #* GET      ||   /photos       ||  photos#index    || exibir uma lista de todas as fotos
    #* GET      ||   /photos/new     ||  photos#new   || retorna um formulário HTML para criar uma nova foto
    #? POST     ||   /photos          ||  photos#create   || criar uma nova foto
    #* GET      ||   /photos/:id       ||  photos#show  || exibir uma foto específica
    #* GET      ||   /photos/:id/edit   ||  photos#edit  || retorna um formulário HTML para editar uma foto
    #? PATCH/PUT ||   /photos/:id     ||  photos#update  || atualiza uma foto específica
    #! DELETE   ||   /photos/:id     ||  photos#destroy  || deletar uma foto específica 

    

>> resources :photo 
  photos_path  retorna  /photos
  new_photo_path  retorna  /photos/new
  edit_photo_path(:id)  retorna  /photos/:id/edit(por exemplo, edit_photo_path(10)retorna /photos/10/edit)
  photo_path(:id)  retorna  /photos/:id(por exemplo, photo_path(10)retorna /photos/10)

  Cada um desses auxiliares possui um (_url) auxiliar correspondente (como photos_url) que retorna o mesmo caminho prefixado com o host, porta e prefixo de caminho atuais.

