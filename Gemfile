source 'https://rubygems.org'

group :test do
  gem 'rake'
end

group :integration do
  gem 'berkshelf'
  gem 'test-kitchen', :git => 'git://github.com/opscode/test-kitchen.git', :branch => '1.0'
  gem 'kitchen-vagrant', :git => 'git://github.com/opscode/kitchen-vagrant.git'
  gem 'foodcritic', '>= 1.6.1'
  gem 'tailor'
end
