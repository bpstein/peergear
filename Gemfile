source 'http://rubygems.org'

gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'pg', group: :production
gem 'rails_12factor', group: :production
gem 'puma', '~> 3.0'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '>= 3.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'toastr-rails'
gem 'paperclip', '~> 4.2'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'warden-rspec-rails'
  gem 'rails-controller-testing'
  gem 'launchy'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
