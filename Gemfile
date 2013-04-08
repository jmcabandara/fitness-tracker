source 'https://rubygems.org'
ruby   '2.0.0'

gem 'rails',                '3.2.13'
gem 'jquery-rails',         '2.2.1'
gem 'strong_parameters',    '0.2.0'

gem 'pg',                   '0.14.1'

gem 'devise',               '2.2.3'
gem 'omniauth',             '1.1.3'
gem 'omniauth-ufc',         git: 'git@github.com:RoR-ecommerce/ufc-omniauth.git'

group :development, :test do
  gem 'rspec-rails',        '~> 2.13.0'
  gem 'factory_girl_rails', '~> 4.2.1'
end

group :test do
  gem 'database_cleaner',   '~> 0.9.1'
  gem 'capybara',           '~> 2.0.2'
  gem 'poltergeist',        '~> 1.1.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',         '3.2.6'
  gem 'coffee-rails',       '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer',       '0.11.4', platforms: :ruby

  gem 'uglifier',           '1.3.0'
end
