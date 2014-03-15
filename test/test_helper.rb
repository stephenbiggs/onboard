ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


# add in minitest and capybara to our test suite
require "minitest/rails"
require "capybara/rails"


class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # i want ot add in the routes from config/routes.rb
  include Capybara::DSL

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
