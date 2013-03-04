require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

RSpec.configure do |config|
  # Render views to show errors on them
  config.render_views

  # Config database_cleaner
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # FactoryGirl helpers
  config.include FactoryGirl::Syntax::Methods

  # Support files
  Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
end
