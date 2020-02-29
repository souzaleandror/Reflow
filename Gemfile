source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'openssl'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'rails_12factor', group: :production

# A very fast & simple Ruby web server
gem 'thin'

# A very fast & simple Ruby web server
gem 'gentelella-rails'
#gem 'modernizr-rails'

gem 'json', '>= 2.0.0'

# jquery-datatables gem for rails
gem 'jquery-datatables-rails', '~> 3.4.0'

# Flexible authentication solution for Rails with Warden.
gem 'devise'

# FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord
gem 'friendly_id'

# The iconic SVG, font, and CSS toolkit https://fontawesome.com
gem 'font-awesome-rails'

# Easy file attachment management for ActiveRecord 
gem "paperclip", "~> 6.0.0"
#gem 'cocaine'

# Resolution-independent country flags for your website
gem 'svg-flags-rails', '>= 1.0.0-beta'

# Dynamic nested forms using jQuery made easy; works with formtastic, simple_form or default forms http://github.com/nathanvda/cocoon
gem 'cocoon'

# ReCaptcha helpers for ruby apps http://github.com/ambethia/recaptcha
gem "recaptcha", require: 'recaptcha/rails'

gem 'faker', github: 'stympy/faker'
gem 'ffaker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  #Better error page for Rack apps
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'

  gem 'guard-livereload', '~> 2.5', require: false

  gem 'bullet', group: 'development'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '2.6.3'