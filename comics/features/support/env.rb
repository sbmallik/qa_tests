require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

# Capybara.default_wait_time = 10
Capybara.run_server = false
Capybara.default_driver = :selenium

World(Capybara)