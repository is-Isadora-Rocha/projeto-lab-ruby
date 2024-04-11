# SOBRE O PROJETO PROJETOS 🤓

Ainda não existe um objetivo final desse projeto, o propósito dele é abranger o essencial de Ruby on Rails em elevar meus níveis de aprendizagem, adicionando o necessário para torná-lo uma aplicação quase completa. 

![image](https://github.com/is-Isadora-Rocha/projeto-lab-ruby/assets/115477897/3317fcfe-d98b-416d-b778-fcc2890f57cf)


### Criação
`rails new PROJETO -d mysql`

⚠️ Lembrar-se de inserir a senha do banco de dados no **database.yml**

`rails db:create`

### Criação do Scaffold de Agenda

`rails g scaffold Agenda paciente medico dtHoraConsulta:date`

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

## TROUBLESHOOTING

#### Na página WELCOME index:
`<%= link_to 'Cadastro de Agenda', agendas_path %>`

Ocorreu o seguinte erro: 
**_undefined method `edit_agenda_path' for an instance of #<Class:<...>_**


### SOLUÇÃO: 
Em routes: 

- get '/agendas/:id/edit', to: 'agendas#edit', `as: :edit_agenda`

Foi adicionado o `as: :edit_agenda` para que o rails encontre o caminho do método

--- 

###  Observação

- `get '/agendas/new', to: 'agendas#new'`

`Showing /home/ccn/rails/projeto/app/views/agendas/index.html.erb where line #14 raised:`
Ocorreu o seguinte erro: undefined local variable or method `new_agenda_path': 
<%= link_to "New agenda", new_agenda_path %>

- A solução é: get '/agendas/new', to: 'agendas#new', as: 'new_agenda' para que a rota identifique o pacote que está sendo utilizado


## ADD NOVO CAMPO APÓS O PRIMEIRO SCAFFOLD

- `rails g scaffold Medico name experience`

Para poder cadastrar um novo médico e sua experiência


## ADD PEDIDOS PARA TESTE DE ESTUDO

- `rails g scaffold Pedido nome__cliente data_pedido:date status_pedido:integer forma_pagamento:integer valor_total:decimal`

