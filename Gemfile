source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'sidekiq'
gem 'sinatra'
gem 'slim'

gem 'whenever', require: false

# Tests and development gems
group :development, :test do
  gem 'pry'
  gem 'awesome_print'
  # gem 'better_errors'
  # gem 'binding_of_caller'
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :development do
  gem 'quiet_assets'
end

group :test do
  gem 'shoulda'
  gem 'simplecov'
  gem 'rails_best_practices'
end
