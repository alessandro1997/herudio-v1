source 'https://rubygems.org'
ruby '2.1.2'

# Ruby on Rails
gem 'rails', '4.1.6'

# Asset processors
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# Assets
gem 'jquery-rails'
gem 'bootstrap-sass'

# Preloading
gem 'spring', group: :development

# Authentication
gem 'devise'
gem 'pundit'

# Internationalization
gem 'rails-i18n'
gem 'devise-i18n'

# Configuration
gem 'figaro', '>= 1.0.0.rc1'

# Views
gem 'haml-rails'
gem 'simple_form'

# Active Record
gem 'pg'

# JavaScript runtime
gem 'therubyracer', platform: :ruby

# Web server
gem 'thin'

group :development do
  # Error handling
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri_21]

  # Guard
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'

  # Guard (filesystem events)
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false

  # Asset logging suppression
  gem 'quiet_assets'
end

group :development, :test do
  # Factories
  gem 'factory_girl_rails'
  gem 'faker'

  # RSpec
  gem 'rspec-rails'
end

group :production do
  # Heroku
  gem 'rails_12factor'
end

group :test do
  # Acceptance testing
  gem 'capybara'
  gem 'launchy'
  gem 'poltergeist'

  # Database cleansing
  gem 'database_cleaner'
end
