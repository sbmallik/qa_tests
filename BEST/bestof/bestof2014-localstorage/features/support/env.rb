require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

Capybara.default_wait_time = 25
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://devwww.azcentral.com/bestof2014/home'

World(Capybara)