require_relative 'boot'

require 'rails/all'

require "sprockets/railtie"
require "attachinary/orm/active_record"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

config.action_mailer.delivery_method = :postmark
config.action_mailer.postmark_settings = { :api_token => "082f3a76-bc80-4d9c-8437-2bc13c9457a5" }



module WWW
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
