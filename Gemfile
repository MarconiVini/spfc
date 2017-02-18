source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0.1'
gem 'pg'
gem 'mongoid'
gem 'mongoid-slug'

gem 'bootstrap-sass'

# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#better views
gem 'slim-rails' #generators with slim

gem 'jquery-rails'
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Action Cable dependencies for the Redis adapter
gem 'redis', '~> 3.0'
gem 'devise'#, git: 'git@github.com:plataformatec/devise.git'
#gem 'kaminari'#, :git => "git://github.com/amatsuda/kaminari.git", :branch => 'master'
gem 'kaminari-mongoid'
gem 'kaminari-actionview'

# file uploader
gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem 'rmagick'

#Text editor
gem 'trix'

#markdown
#gem 'redcarpet'
#styles for codeblocks
#gem 'rouge'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'factory_girl_rails'
  gem "better_errors"
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'faker'
  gem 'guard-rspec', require: false
  gem 'mongoid-rspec'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  gem "binding_of_caller"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'capistrano',         require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano3-puma',   require: false
end

group :test do
  #gem 'shoulda-matchers', require: false  
  gem 'simplecov', :require => false
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]