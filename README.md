<h1 align="center">
  <strong>Cache with RAILS 5</strong>
</h1> 

<p align="center">
    Learning Cache with RAILS 5
</p> 

## Quando fazer caching?

O caching é um passo importante para se começar a pensar quando houver uma grande carga de dados numa determinada área da aplicação.

Se mal aplicado, o caching pode trazer sérias dores de cabeça como perda de desemprenho do servidor, problemas na arquitetura do app e até mesmo financeiro, já que existem alternativas que ocasionam um grande consumo de disco e até mesmo consumo de processamento externo à aplicação.

## Cuidados na hora de Cachear o app

1. O meu problema pode ser resolvido com uma melhor consulta ao database?
2. A técnica que eu quero aplicar, realmente é a melhor pra minha situação?
3. Possuo recurso suficiente para usar o store que estou propondo?
4. No caso de adotar soluções externas, possuo recurso financeiro suficiente para cobrir os custos?

## Tipos Diferentes de Cache

* Action Caching (Cacheamento de Action)
* Fragment Caching
* Russian Doll Caching
* Low Level Caching
* SQL Caching (Cachamento de SQL)

## Tipos Diferentes de Armazenamento de Cache

* Armazenamento em Memória
* Armazenamento em Arquivo
* Armazenamento com Memcached
* Armazenamento NullStore

## Ruby version: 

* 2.5.1

## System dependencies - Gems

* rails 5.2.0
* actionpack-action_caching
* memcached
* dalli

## Configuration
```sh
 $ bundle install
```
## Database creation
```sh
 $ rails db:create
```
```sh
 $ rails db:migrate
```
## Database initialization
```sh
 $ rails db:seed
```
## How to run the test suite

## Services (job queues, cache servers, search engines, etc.): 
```sh
 $ rails import:agent_users
```
## Deployment instructions

### Deploy Heroku

1. Primeiro (via heroku Cli) criamos APP no heroku. Rode no console no diretório do projeto:
```sh
 $ heroku create app-name
```
2. Agora vamos incluir os buildpacks, que são os pacotes que vão ajudar o heroku a instalar nossas dependências:
```sh
 $ heroku buildpacks:add heroku/ruby
```
* *Se você fizer o deploy sem ‘setar’ o buildpack, o heroku vai detectar qual é o seu framework principal e vai ‘setar’ para você, neste caso o buildpack do ruby.*

3. Para finalizar basta rodar os comandos para subir o código:

```sh
 $ git add .
```
```sh
 $ git commit -m 'My first commit'
```
```sh
 $ git push heroku master
```

## 🙋‍♂️ Author

* **Danilo Dias** - [reluviari](https://github.com/reluviari)
