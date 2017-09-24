# Reports API

Example of Rails 5 app with API

## Overview
* JSON API with [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers)
* User authentication with [Devise](https://github.com/plataformatec/devise)
* API documentation with [Swagger](https://github.com/richhollis/swagger-docs)

## Requirements
* Linux or MacOS (*not tested on Windows*)
* Ruby >= 2.4
* Rails >= 5.1
* PostgreSQL >= 9.x

## Initial Setup
Clone project and run following from project directory:

```bash
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
```

Seed the database with admin user account and initial ReportType and ReportTypeOption records

```bash
bundle exec rails db:seed
```

## General

Start local server and access app at http://localhost:3000.
Log in with admin user credentials set in db/seeds.rb

```bash
bundle exec rails server
```

### Testing
Testing is done with RSpec. To run specs:

```bash
bundle exec rspec
```

### API
