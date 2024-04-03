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
