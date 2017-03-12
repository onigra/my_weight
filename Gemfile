source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.0beta1'
gem 'pg', '~> 0.18'
gem 'sass-rails', github: "rails/sass-rails"
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby

gem 'webpacker', github: "rails/webpacker"
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem "active_model_serializers"
gem "rambulance"
gem 'bcrypt', '~> 3.1.7'
gem 'puma', '~> 3.7'

group :development, :test do
  gem 'byebug'
  gem "awesome_print"
  gem "rspec-rails"
  gem "rspec-json_matcher"
  gem "rspec-its"
  gem "spring"
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "spring-commands-rspec"

  gem "pry-rails"
  gem "pry-byebug"
  gem "pry-stack_explorer"
  gem "pry-remote"
  gem "pry-doc"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
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
