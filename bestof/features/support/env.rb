# begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

Capybara.default_wait_time = 60
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://devwww.azcentral.com/bestof/home'

World(Capybara)