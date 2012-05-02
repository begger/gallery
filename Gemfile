source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'bootstrap-sass'
gem 'bootstrap_kaminari', :git => 'git://github.com/tonycoco/bootstrap_kaminari.git'
gem 'carrierwave'
gem 'devise'
gem 'fog'
gem 'haml-rails'
gem 'kaminari'
gem 'mini_magick'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'resque', :require => 'resque/server'
gem 'settingslogic'
gem 'simple_form'
gem 'cancan'

group :development do
  gem 'capistrano'
  gem 'foreman'
  gem 'rails-footnotes'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'taps'
  gem 'added_methods'
  gem 'awesome_print'
  gem 'brice'
  gem 'looksee'
  gem 'what_methods'
end

group :development, :test do
  gem 'mysql2'
  gem 'rspec-rails'
  gem 'syntax'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg'
  gem 'thin'
end
