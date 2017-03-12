source 'https://rubygems.org'
ruby '2.4.0'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem "active_model_serializers"
gem "rambulance"
gem 'bcrypt', '~> 3.1.7'
gem "puma"

group :development, :test do
  gem 'byebug'
  gem "awesome_print"
  gem "rspec-rails"
  gem "rspec-parameterized"
  gem "rspec-json_matcher"
  gem "rspec-its"
  gem "spring"
  gem "spring-commands-rspec"

  gem "pry-rails"
  gem "pry-byebug"
  gem "pry-stack_explorer"
  gem "pry-remote"
  gem "pry-doc"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem "guard"
  gem "guard-rails"
  gem "guard-rspec"
  gem "growl"
  gem "annotate"
end

group :test do
  gem "database_rewinder"
  gem 'coveralls', require: false
end

group :production do
  gem "rails_12factor"
end
