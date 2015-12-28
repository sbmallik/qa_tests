# Use Capybara integration
require "sauce"
require "sauce/capybara"
require "capybara/rails"
require "capybara/rspec"

require "capybara"
#require "capybara/sauce"
require "sauce/cucumber"

# Set up configuration
Sauce.config do |c|
  c[:browsers] = [
    #["Windows 8.1", "Internet Explorer", "11"]
    #["Windows 8.1", "Firefox", "39"]
    #["Windows 8.1", "Chrome", 47]
    #["OS X 10.10", "Safari", "8.0"]
    #["OS X 10.10", "Chrome", 47]
    #["OS X 10.10", "Firefox", "42"]
    #["OS X 10.10", "iPhone", "8.2", {:deviceName => 'iPhone Simulator'}]
    #["OS X 10.10", "iPad", "8.2", {:deviceName => 'iPad Simulator'}]
    ["Linux", "Android", "5.1", {:deviceName => 'Android Emulator'}]
  ]
    c[:sauce_connect_4_executable] = 'sauce-connect/bin/sc'
end

Capybara.default_driver = :sauce
Capybara.javascript_driver = :sauce

#driver.capabilities.javascript_enabled = true

=begin
caps = Selenium::WebDriver::Remote::Capabilities.iphone
caps['platform'] = 'OS X 10.10'
caps['version'] = '8.2'
caps['deviceName'] = 'iPhone Simulator'
caps['deviceOrientation'] = 'portrait'

Windows (Chrome)
Windows (Firefox)
Mac (Chrome)
Mac (Safari)
iPad (Safari)
Android (Chrome)



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