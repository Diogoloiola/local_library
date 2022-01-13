## Biblioteca local


# Criando o arquivo rspce

rails g rspec:install

## Criando as factories

mkdir spec/factories


## Configurando devise token auth

gems necessárias 

    gem 'letter_opener', '~> 1.7'
    gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth'


### Configurando o letter_opener
No arquivo
    config/initializers/development.rb

Coloque esse arquivos abaixo
    config.action_mailer.delivery_method = :letter_opener
    config.action_mailer.perform_deliveries = true

### Configurando o devise token auth subtópicos

Rode o comando 
    rails g devise:install

e no arquivo

    config/initializers/development.rb

Adicione essa linha
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }