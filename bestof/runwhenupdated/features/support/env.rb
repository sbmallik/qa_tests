require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara-webkit'

# Capybara.default_wait_time = 60
Capybara.run_server = false
# Capybara.default_driver = :selenium
Capybara.default_driver = :webkit


# Capybara.app_host = 'http://nocache.azcentral.com/bestof2014/home'

World(Capybara)