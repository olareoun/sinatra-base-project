ENV['RACK_ENV'] = 'test'

require 'rack/test'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara-webkit'
require 'bundler/setup'

Capybara.app = eval "Rack::Builder.new {( " + File.read(File.dirname(__FILE__) + '/../../config.ru') + "\n )}"
Capybara.javascript_driver = :webkit

RSpec.configure do |config|
  config.mock_with :rspec

  config.before :each do
  end

  config.after :each do
  end

  config.include Capybara::DSL

  config.treat_symbols_as_metadata_keys_with_true_values = true

end

def selector string
  find :css, string
end

