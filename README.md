# 📰 Mettzer News - Projeto Ruby on Rails

Este projeto é uma aplicação Ruby on Rails que consome notícias públicas via API, permite ao usuário salvar artigos para leitura posterior, autenticar com Devise e visualizar seus salvos.

---

## 🚀 Tecnologias

- Ruby 3.0.2
- Rails 7.x
- PostgreSQL
- Devise (autenticação)
- TailwindCSS
- NewsAPI

---

## ⚙️ Pré-requisitos

Antes de começar, instale:

- [Ruby 3.0.2](https://www.ruby-lang.org/)
- [Rails](https://rubyonrails.org/) (`gem install rails`)
- [PostgreSQL](https://www.postgresql.org/)
- [Bundler](https://bundler.io/) (`gem install bundler`)
- Node.js e Yarn (`sudo apt install nodejs yarn`)

---

## 📥 Passo a passo para rodar o projeto

### 1. Clone o repositório

```bash
git clone git@github.com:RobsonMT/Code-Challenge-Mettzer.git
cd Code-Challenge-Mettzer
```

### 2. Instale as dependências

```bash
bundle install
```

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto:

```env
NEWS_API_KEY=sua_chave_da_api
```

Caso não possua uma chave de api, acesse: [https://newsapi.org/](https://newsapi.org/) 

### 4. Instale a gem `dotenv-rails` caso não tenha:

```bash
bundle add dotenv-rails
```

### 5. Configure o banco de dados

Edite `config/database.yml` conforme seu usuário/senha PostgreSQL.

Depois, crie e migre o banco:

```bash
rails db:create db:migrate
```

### 6. Inicie o servidor

```bash
rails server
```

Acesse: [http://localhost:3000](http://localhost:3000)

---

## 👥 Funcionalidades

- Registro e login de usuários com Devise
- Pesquisa de artigos via API externa
- Salvar artigos para ler mais tarde
- Listagem e remoção dos artigos salvos
- Interface responsiva com TailwindCSS

