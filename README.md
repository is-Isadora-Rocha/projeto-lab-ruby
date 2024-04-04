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


 ## RESUMO SOBRE ROUTES

    
| HTTP Verb | Path            | Controller#Action | Used for                             |
|-----------|-----------------|-------------------|--------------------------------------|
| GET       | /photos         | photos#index      | Exibir uma lista de todas as fotos   |
| GET       | /photos/new     | photos#new        | Retorna um formulário HTML para criar uma nova foto |
| POST      | /photos         | photos#create     | Criar uma nova foto                 |
| GET       | /photos/:id     | photos#show       | Exibir uma foto específica           |
| GET       | /photos/:id/edit| photos#edit       | Retorna um formulário HTML para editar uma foto |
| PATCH/PUT | /photos/:id     | photos#update     | Atualiza uma foto específica         |
| DELETE    | /photos/:id     | photos#destroy    | Deletar uma foto específica          |


    
ROTA COMPLETA: 
`resources :photo`
| Helper           | Retorna         | Exemplo de Uso             |
|------------------|-----------------|-----------------------------|
| photos_path      | /photos         |                           |
| new_photo_path   | /photos/new     |                           |
| edit_photo_path(:id) | /photos/:id/edit | edit_photo_path(10) retorna /photos/10/edit |
| photo_path(:id)  | /photos/:id     | photo_path(10) retorna /photos/10 |


  ## BOOTSTRAP

  #### TWITTER BOOTSTRAP
  - gem "therubyracer"
  - gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  - gem "twitter-bootstrap-rails"

  ### GENERATE BOOTSTRAP
  - rails generate bootstrap:install less
  - rails generate bootstrap:layout application fluid
  - rails generate bootstrap:themed ***Annotations (nosso model no plural)*** 
  - rails generate bootstrap:themed ***Friends*** ***(nosso model no plural)***

  Annotations e Friends são model de outro projeto, estou usando como exemplo para não esquecer. 

