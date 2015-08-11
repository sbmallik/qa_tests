require 'cucumber'
require 'httparty'
require 'sinatra'
require 'rspec'
require 'json'

require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.run_server = false
# Capybara.default_driver = :selenium

require 'capybara-webkit'
Capybara.default_driver = :webkit

# Capybara.app_host = 'http://archive.azcentral.com/bestof2014/home'

World(Capybara)