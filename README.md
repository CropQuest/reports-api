# Reports API App

*** Note: this is still a work in progress ***

Rails 5 example app with a documented API. The primary goal is to keep this app up to date with new versions of Ruby on Rails and project dependencies as a reference implementation. The secondary goal is to provide a simple documented API for learning to implement mobile API clients.

## Overview
* User authentication with [Devise](https://github.com/plataformatec/devise)
* JSON API with [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers)
* API documentation with [Swagger](https://github.com/richhollis/swagger-docs)
* [RSpec](http://rspec.info/) for testing
* [Haml](http://haml.info/) for views
* [Bootstrap 4](https://getbootstrap.com/) CSS Framework

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
