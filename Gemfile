source 'https://rubygems.org'

gem 'jruby-openssl', :platforms => :jruby
gem 'rake'
gem 'yard'

platforms :rbx do
 gem 'rubysl', '~> 2.0'
 gem 'psych'
 gem 'json'
 gem 'rubinius-developer_tools'
end

group :development do
  gem 'growl'
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'kramdown'
  gem 'plymouth', :platforms => :mri_19
  gem 'pry'
  gem 'pry-debugger', :platforms => :mri_19
  gem 'rb-fsevent'
end

group :test do
  gem 'coveralls', :require => false
  gem 'rack-test'
  gem 'rspec', '>= 2.14'
  gem 'simplecov', :require => false
end

gemspec
