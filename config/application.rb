require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CodingExercise
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers

    # Use SASS for CSS generation, the white-space based syntax
    config.sass.preferred_syntax = :sass # -- all .rb files in that directory are automatically loaded.
  end
end
