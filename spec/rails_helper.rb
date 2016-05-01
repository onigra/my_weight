ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'rspec/its'
require 'rspec/json_matcher'

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  config.include RSpec::JsonMatcher

  config.before :suite do
    begin
      DatabaseRewinder.start
    ensure
      DatabaseRewinder.clean
    end
  end

  config.after :each do
    DatabaseRewinder.clean
  end
end
