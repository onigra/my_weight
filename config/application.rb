require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "action_mailer/railtie"
# require "active_job/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module MyWeight
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec
    end

    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :utc

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    I18n.enforce_available_locales = true
    config.i18n.default_locale = :en

    config.active_record.raise_in_transactional_callbacks = true
    config.assets.precompile += ['*.js']
  end
end
