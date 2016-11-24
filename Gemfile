source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '~> 5.0.0'

gem 'pg',   '~> 0.19.0' # Postgres Database adapter for ActiveRecord
gem 'puma', '~> 3.6.0'  # Fast, threaded web server

# Assets
gem 'coffee-rails', '~> 4.2.0'  # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails', '~> 4.2.0'  # Use jquery as the JavaScript library
gem 'sass-rails',   '~> 5.0.0'  # Sass CSS Preprocessor
gem 'slim-rails',   '~> 3.1.0'  # Slim templating langauge
gem 'turbolinks',   '~> 5.0.0'  # Turbolinks for fast navigation
gem 'uglifier',     '~> 3.0.0'  # Compressor for JavaScript assets

group :development do
  gem 'listen'                # Enables OS file change event detection without polling
  gem 'spring'                # Preload rails into memory
  gem 'spring-watcher-listen' # Make spring use listen instead of polling
end

group :development, :test do
  gem 'pry-awesome_print'  # Auto AP in pry
  gem 'pry-rails'          # Adds pry, an interactive REPL debugger; Try show-models
end

group :test do
  gem 'capybara'    # Acceptance testing
  gem 'minitest'    # Inlcude the latest version of minitest
  gem 'poltergeist' # PhantomJS driver for Capybara
end
