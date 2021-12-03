# Simple Task Application with Author and Tasks

```
docker-compose run --no-deps web rails new . --force
```

### Add gems

```
gem "bootstrap_form", "~> 5.0"

group :development, :test do
  gem 'rspec-rails', '~> 5.0.0'
  gem 'guard-rspec', require: false
  #...
end
```

and rebuild

```
docker-compose build
```

### Preparing environment

```
docker-compose run web rails generate rspec:install
docker-compose run web bundle exec guard init rspec
```

### Active Storage

```
docker-compose run web rails active_storage:install
```

and gem of him

```
gem 'image_processing', '~> 1.2'
```

### Rebuild

```
docker-compose
```

### Migrate database

```
docker-compose run web rails db:drop db:create db:create
```
