source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.5", ">= 7.0.5.1"

gem "sprockets-rails"

gem "pg", "~> 1.1"

gem "puma", "~> 5.0"

gem "jsbundling-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem "cssbundling-rails"

gem "jbuilder"
#gem 'activeadmin'
gem "devise"
gem "pundit"
gem "logidze", "~> 1.1"
gem "closure_tree"
gem 'database_validations'
gem 'haml-rails'

# gem "redis", "~> 4.0"
# sync
# gem "kredis"

# gem "bcrypt", "~> 3.1.7"

#gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

# gem "sassc-rails"

# gem "image_processing", "~> 1.2"

group :development, :test do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "web-console"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "shoulda-matchers"
  gem "database_cleaner-active_record"
  gem "standard"
  gem "rubocop-rspec", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rake", require: false
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :development do
  gem "database_consistency", require: false
  gem "brakeman"
end
