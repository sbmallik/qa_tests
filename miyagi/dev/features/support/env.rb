require 'capybara_wysihtml5'

#World(Capybara::Wysihtml5)
World(Capybara::Wysihtml5Helper)



require 'capybara'
require 'capybara/cucumber'
require 'capybara-webkit'
require 'rspec/expectations'
#require 'cucumber-rails'

Capybara.configure do |config|
  config.javascript_driver = :webkit
  #config.default_driver = :selenium
  #config.app_host   = 'http://www.google.com'
end
World(Capybara)

Before('@javascript') do
    page.driver.allow_url("miyagi.azcentral.com")
    page.driver.allow_url("maxcdn.bootstrapcdn.com")
    page.driver.allow_url("fonts.googleapis.com")
    page.driver.allow_url("cdn.datatables.net")
    page.driver.allow_url("cdn.leafletjs.com")
    page.driver.allow_url("ajax.googleapis.com")
    page.driver.allow_url("code.jquery.com")
    page.driver.allow_url("netdna.bootstrapcdn.com")
    page.driver.allow_url("upload.wikimedia.org")
end