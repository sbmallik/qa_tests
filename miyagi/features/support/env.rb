require 'rspec-expectations'
require 'capybara' 
require 'capybara/dsl' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
# require 'capybara/poltergeist'

Capybara.default_wait_time = 10
Capybara.run_server = false
Capybara.default_driver = :selenium

=begin
Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end
=end

# Capybara.app_host = 'http://archive.azcentral.com/bestof2014/home'

World(Capybara)