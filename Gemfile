source 'https://rubygems.org'

group :test do
  gem 'rake'
  gem 'minitest'
end

group :integration do
  gem 'berkshelf'
  gem 'test-kitchen', :git => 'git://github.com/opscode/test-kitchen.git', :branch => '1.0'
  gem 'foodcritic', '>= 1.6.1'
  gem 'tailor'
  gem 'chef'
end
