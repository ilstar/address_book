source 'https://rubygems.org'

gem 'rails', '3.2.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


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

gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'rails-i18n', '0.6.1'

group :test, :development do
  gem 'mysql2'

  gem "rspec-rails", '>= 2.8.0'
  gem "factory_girl_rails", '3.0.0'

  gem 'debugger'
end

group :production do
  gem 'pg'
end