# Census Rails

> A rails application that shows statistics about people names in Brazil.

## Getting Started w/ Docker

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- Create file `.env` (you can copy the content from `.env.sample` in root directory for default values)


### Setup

- Navigate to the project folder with `cd census-rails` and run:

```
docker-compose build
docker-compose run --rm web bin/setup
```

### Running

- Run `docker-compose up` and access it through: `http://localhost:3000`

### Run tests

- Run `docker-compose run --rm web rspec`

### Docker bash

- `docker-compose run --rm web bash`
