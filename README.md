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
4. Set DATABASE_URL for development postgres instance in .rbenv-vars
5. Setup proper .env using .env.example as template

### Database creation

`bin/rails db:create db:migrate`

### Database initialization

Run rails console and import the data from csv into the new postgres database.

```bash
rails c
> Song.import_csv!
```

### Run API

```bash
docker-compose up -d
rails s
```

### Tests

Unit tests, and integration tests are included using minitest and rails default framework.
These can be run with
`bin/rails test`

### Acknowledgements

Song Dataset taken from <https://data.mendeley.com/datasets/3t9vbwxgr5/2>
> Moura, Luan; Fontelles, Emanuel; Sampaio, Vinicius; França, Mardônio (2020), “Music Dataset: Lyrics and Metadata from 1950 to 2019”, Mendeley Data, V2, doi: 10.17632/3t9vbwxgr5.2
