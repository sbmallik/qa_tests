# Use Capybara integration
require "sauce"
require "sauce/capybara"
require "capybara/rails"
require "capybara/rspec"

# Set up configuration
Sauce.config do |c|
  c[:browsers] = [
    ["Windows 8.1", "Internet Explorer", "11"],
    ["Windows 8.1", "Firefox", "38"],
    ["Windows 8.1", "Chrome", 43],
    ["OS X 10.10", "Safari", "8.0"],
    ["OS X 10.10", "Chrome", 43],
    ["OS X 10.10", "Firefox", "39"]
  ]
	c[:sauce_connect_4_executable] = 'sauce-connect/bin/sc'
end

Capybara.default_driver = :sauce
Capybara.javascript_driver = :sauce


=begin
# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
require "sauce/capybara"
Sauce.config do |config|
  config[:browsers] = [
    ["OS", "BROWSER", "VERSION"],
    ["OS", "BROWSER", "VERSION"]
  ]
  config[:sauce_connect_4_executable] = # path to Sauce Connect 4 executable
end
Capybara.default_driver = :sauce 
Capybara.javascript_driver = :sauce
=end