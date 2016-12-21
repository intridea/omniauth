source 'https://rubygems.org'

# openssl 0.9.4+, CVE see https://hakiri.io/github/omniauth/omniauth/master
gem 'jruby-openssl' '~> 0.9.4', :platforms => :jruby
gem 'rake', '~> 10.5'
gem 'yard'

group :development do
  gem 'kramdown'
  gem 'pry'
end

group :test do
  gem 'coveralls'
  gem 'hashie', '~> 2.0.5', :platforms => [:jruby_18, :ruby_18]
  gem 'json', '~> 1.8', :platforms => [:jruby_18, :jruby_19, :ruby_18, :ruby_19]
  gem 'mime-types', '~> 1.25', :platforms => [:jruby_18, :ruby_18]
  gem 'rack-test'
  gem 'rack', '~> 1.0', :platforms => [:jruby_18, :jruby_19, :ruby_18, :ruby_19, :ruby_20, :ruby_21]
  gem 'rest-client', '~> 1.6.0', :platforms => [:jruby_18, :ruby_18]
  gem 'rspec', '~> 3.0'
  gem 'rubocop', '>= 0.25', :platforms => [:ruby_20, :ruby_21, :ruby_22]
  gem 'simplecov', '>= 0.9'
  gem 'tins', '~> 1.6.0', :platforms => [:jruby_18, :jruby_19, :ruby_18, :ruby_19]
end

gemspec
