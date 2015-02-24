require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

#Capybara.default_wait_time = 60
Capybara.run_server = false
Capybara.default_driver = :selenium
#Capybara.app_host = 'http://archive.azcentral.com/bestof2014/home'

World(Capybara)


def current_url_fragment
  URI.parse(current_url).fragment
end