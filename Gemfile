source 'https://rubygems.org'


gem 'rails', '4.2.7.1'

# https://github.com/rails-api/rails-api, MIT
gem 'rails-api'

gem 'sqlite3'

# https://github.com/cerebris/jsonapi-resources, MIT
# Purpose JSON API
gem 'jsonapi-resources'


# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', :group => :development

  # https://github.com/bbatsov/rubocop, MIT
  # code linter
  gem 'rubocop', '~> 0.49.1', require: false
end

group :development, :test do
  # https://github.com/rweng/pry-rails, MIT
  gem 'pry-rails', '~> 0.3.4'
end

group :test do
  # https://github.com/bblimke/webmock, MIT
  gem 'webmock', '~> 1.22.3'

  # https://github.com/rspec/rspec-rails, MIT
  gem 'rspec-rails'

  # https://github.com/bmabey/database_cleaner, https://github.com/bmabey/database_cleaner/blob/master/LICENSE
  gem 'database_cleaner'

  # https://github.com/thoughtbot/shoulda-matchers, MIT
  gem 'shoulda-matchers'

  # https://github.com/thoughtbot/factory_girl_rails, MIT
  gem 'factory_girl_rails'

  gem 'rspec_jsonapi', path: 'components/rspec_jsonapi', require: false
end
