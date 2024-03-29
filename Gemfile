source 'https://rubygems.org'

ruby '2.1.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.beta4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0.beta1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jQuery as the JavaScript library
gem 'jquery-rails', '~> 4.0.0.beta2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'slim-rails'
gem 'html2slim', group: :development

gem 'puma'

gem 'foreman'

# rails s をした時に.envが読まれないため
gem 'dotenv-rails', :groups => [:development, :test]

gem 'devise'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes', '>= 4.0.0', '<5'
end

gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'compass-rails'
gem 'font-awesome-rails'

gem 'bootstrap_form'

gem 'kaminari'

gem 'awesome_print'

gem 'rails_stdout_logging'
group :production, :staging do
  gem 'rails_12factor'
end

group :development do

  gem 'letter_opener'

  gem 'quiet_assets'
  gem 'tapp'
  gem 'view_source_map'
  gem 'thin'
end

gem 'backbone-on-rails'

group :development do
  gem 'guard-livereload', require: false
end
