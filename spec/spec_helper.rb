# encoding: UTF-8
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

require 'database_cleaner'
require 'timecop'
require 'coveralls'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.before(:suite) { ActiveRecord::Migration.maintain_test_schema! }
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = 'random'
  config.before(:suite) do
    DatabaseCleaner[:active_record].strategy = :deletion
  end
  config.before(:each) do |test|
    puts "Running #{test.example.description} - #{test.class.description} - #{test.example.file_path}" if ENV["SPEC_TRACE_DEBUG"]
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
    Timecop.return
  end
end
