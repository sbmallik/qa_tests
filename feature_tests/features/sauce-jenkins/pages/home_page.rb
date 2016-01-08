class HomePage
  extend Capybara::DSL
  include Capybara::DSL
  include RSpec::Matchers

  def self.visit(target_url)
    page.visit ui_url target_url
    new
  end

  def insuranceTab
  	find("#insurance-menuitem")
  end

end
