source 'https://rubygems.org'

gem 'rails', '3.2.13'

platforms :ruby do
  gem 'pg'
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
platforms :jruby do
  gem 'activerecord-jdbcpostgresql-adapter'

  gem 'jruby-openssl'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyrhino', :platforms => :jruby
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'commands'
  gem 'bullet'
end

group :test do
  gem 'rspec-rails'
end


gem 'jquery-rails'
gem 'bootstrap-datepicker-rails'
gem 'devise'
gem "twitter-bootstrap-rails"
gem 'gmaps4rails'
gem 'will_paginate'
gem 'ransack'
gem 'cancan'
gem 'le'





# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
#gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
