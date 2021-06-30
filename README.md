# Data-Importer

#Getting Started

After cloning the repo:
### Install the gems

```
bundle install
```

### Setup the database

Create the database
```
rake db:create
```

Migrate the database
```
rake db:migrate
```

### Start the server
```
rails s
```

### Style guide

We are using [Rubocop](https://github.com/rubocop/rubocop) as the project linter

```
rubocop
```

Auto-correct mode

```
rubocop -a
```
