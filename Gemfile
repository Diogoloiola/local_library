source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails', '~> 6.1.4', '>= 6.1.4.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'

gem 'rack-cors'

group :development, :test do
  gem 'awesome_print', '~> 1.9', '>= 1.9.2'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker'
  gem 'rspec-rails'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'letter_opener', '~> 1.7'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :production do
  gem 'pg', '~> 1.2'
end
