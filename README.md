# Introduction

A simple songs CRUD + search API created with rails and searchable through elasticsearch

## Stack

- Rails 7
- Elasticsearch 8.5
- Ruby 3.1.3

## Setup

1. Install postgres
2. Install Ruby 3.1.3 and Rails 7
3. Install Docker + Docker Compose

### Database creation

`bin/rails db:create db:migrate`

### Database initialization

`bin/rails db:seed`

### Tests

Unit tests, and integration tests are included using minitest and rails default framework.
These can be run with
`bin/rails test`
