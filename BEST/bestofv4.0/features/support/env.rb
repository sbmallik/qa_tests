require 'cucumber'
require 'rspec'
require 'rspec/expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'

require 'capybara-webkit'
Capybara.default_selector = :css
Capybara.default_driver = :webkit
Capybara.javascript_driver = :webkit

World(Capybara)