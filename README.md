# Reports API

Example of Rails 5 app with API

## Overview
* JSON API with [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers)
* User authentication with [Devise](https://github.com/plataformatec/devise)
* OAuth2 provider with [Doorkeeper](https://github.com/doorkeeper-gem/doorkeeper)
* API documentation with [Swagger](https://github.com/richhollis/swagger-docs)
* Tests with [RSpec](https://github.com/rspec/rspec-rails)

## Requirements
* Linux or MacOS (*not tested on Windows*)
* Ruby >= 2.4
* Rails >= 5.1
* PostgreSQL >= 9.x

## Setup
Clone project and run following from project directory:

```bash
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
```

Start local server and access app at http://localhost:3000
```bash
bundle exec rails server
```
