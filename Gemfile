source :rubygems

# If you make any changes in this file, please run `bundle install`.
# If new versions of your installed gems are available, run `bundle update`

# this breaks specs.. but is necessary for attachements i think
gem "radiant", :git => 'git://github.com/enspiral/radiant.git', :branch => '1.0.1-updated-paperclip'
#gem "radiant", :path => '/Users/rob/src/radiant'
#gem "radiant", "~> 1.0.1"
#gem 'rails', '2.3.11'

gem 'hpricot'
gem 'fastercsv'
gem 'httparty'
# alternatively, in development
# gem "radiant", :path => "/path/to/radiant/root"

# Uncomment to support CoffeeScript with a JS runtime (used in the Sheets extension)
# gem "execjs"
# And you may need one of these:
# gem "mustang" # Google V8 for Ruby
# gem "therubyracer" # Google V8 for Ruby
# gem "therubyrhino" # Mozilla Rhino for JRuby
# gem "johnson" # Mozilla SpiderMonkey for Ruby

gem "mysql", "~> 2.8.1"
gem 'whenever', :require => false

# Language packs
# gem "radiant-dutch_language_pack-extension",    "~> 1.0.0"
# gem "radiant-french_language_pack-extension",   "~> 1.0.0"
# gem "radiant-german_language_pack-extension",   "~> 1.0.0"
# gem "radiant-italian_language_pack-extension",  "~> 1.0.0"
# gem "radiant-japanese_language_pack-extension", "~> 1.0.0"
# gem "radiant-russian_language_pack-extension",  "~> 1.0.0"

gem "radiant-scheduler-extension", "~> 1.0.0"
gem "radiant-navigation_tags-extension", "~> 0.2.6", :git => 'git://github.com/enspiral/navigation_tags.git'
gem "radiant-ck_editor_filter-extension", "~> 0.2.5"
gem "radiant-settings-extension", "~> 1.1.1", :git => 'git://github.com/enspiral/radiant-settings.git'
gem 'radiant-mailer-extension'

gem 'radiant-layouts-extension', :git => 'git://github.com/enspiral/radiant-share-layouts-extension.git'
# The above gem uses rr for mocking
gem 'rr', :group => :test

# This depends on radiant-layouts-extension
gem "radiant-reader-extension", :git => 'git://github.com/enspiral/radiant-reader-extension.git'
#gem 'radiant-reader-extension', :path => '/Users/craig/development/enspiral/radiant-reader-extension'

gem "radiant-forum-extension", :git => 'git://github.com/enspiral/radiant-forum-extension.git', :branch => :wackamole
# gem "radiant-forum-extension", :path => '/Users/craig/development/radiant_extensions/radiant-forum-extension'

gem "radiant-page_reader_group_permissions-extension", :git => 'git@github.com:enspiral/radiant-page_reader_group_permissions-extension.git'
#gem "radiant-page_reader_group_permissions-extension", :path => '/Users/craig/development/radiant_extensions/radiant-page_reader_group_permissions-extension'


group :production, :staging do
  gem 'airbrake'
end

group :production do
  # not sure if fog is necessary
  gem 'fog'
  gem 'parallel', '~> 0.5.12'
end

# If you're running tests or specs
group :test, :cucumber, :development do
  #gem 'vcr'
  #gem 'webmock'
  gem 'rspec-nc'
  gem 'webrat'
  gem 'rspec-rails', '1.3.4'
  gem 'rspec', '1.3.2'
  gem "capybara", "1.1.1"
  gem 'timecop'
  #gem "capybara-webkit"
  gem 'launchy'
  gem "cucumber", "1.1.0"
  gem "cucumber-rails", :git => 'https://github.com/robguthrie/cucumber-rails.git', :branch => 'v0.3.2fixed'
  gem "database_cleaner",  " >= 0.5.0"
end

group :development do
  gem 'capistrano'
end
