class BusinessesPage
  extend Capybara::DSL
  include Capybara::DSL

  def self
    new
  end

  def getQuoteModule
    find('.action-module-get-a-quote')
  end

end
