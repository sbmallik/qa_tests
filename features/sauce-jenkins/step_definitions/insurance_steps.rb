When 'I click on the Insurance tab in the nav bar' do
  @homepage.insuranceTab.click
  @businessespage = BusinessesPage.new
end

Then 'I should see the Get a Quote module' do
  @businessespage.getQuoteModule
end
