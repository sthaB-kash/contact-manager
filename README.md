# Contact Manager Application

You can run this application in two different ways.

At first, clone this repo. `git@github.com:sthaB-kash/contact-manager.git`

## Using Docker

To run the application you must have docker installed on your machine.

### Steps:

- create `.env` file in the root of the directory and paste the contents of the env (see below)
- run `docker-compose build` - to build image
- run `docker-compose up` - it starts the containers

or using single command `docker-compose up --build`

Run the following command to stop the running containers:

`docker-compose down`

## Without Docker

You must have ruby, postgres installed on your system.

### Requirements
- Ruby 3.1.2
- Bundler 2.5 +
- And install rails to run rails commands

### Steps
- run `bundle install` - this will install gems specified in the Gemfile
- run `rails db:create` - this will create a database (***DON'T FORGET TO MENTION DB NAME IN .env*** )
- run `rails db:migrate` - this will execute all pending migrations (if any)
- run `rails db:seed` - to add some data on db
- run `./bin/dev` or `rails server` or `rails s` - starts the server 

&nbsp;


#

Server will listening on http://127.0.0.1:3000

#

## .env

***NOTE: Change host, port, user and password as per your system if you are trying to run without docker.***
```
RAILS_ENV=development
RAILS_MASTER_KEY=cc3905eca0187e81335b602863029060

# PostgresDB
POSTGRES_HOST=db
POSTGRES_PORT=5432
POSTGRES_USER=bikash
POSTGRES_PASSWORD=password
POSTGRES_DB=phone_book
```
