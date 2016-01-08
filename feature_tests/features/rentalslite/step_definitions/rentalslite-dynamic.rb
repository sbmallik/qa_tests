# 1) Complete form search
Given(/^I visit the Rentals Lite web page$/) do
  visit "http://www.rgj.com/marketplace/rentals/"
  #visit ui_url('/module-showcase/rentalslite-search/')
  #wait_for_pageload
end
When(/^I complete the Rental Lite search form$/) do
  #page.find("#rls-form-city").set("Phoenix")
  #select("Arizona", :from => 'rls-form-state')
  #select("$400", :from => 'rls-form-minrent')
  #select("$1,800", :from => 'rls-form-maxrent')
  #select("3 Beds", :from => 'rls-form-bedrooms')
  #select("2+ Baths", :from => 'rls-form-bathrooms')
  #select("Dog and Cat", :from => 'rls-form-pets')

  city = page.find("#rls-form-city").set("Phoenix")
  state = select("Arizona", :from => 'rls-form-state')
  minrent = select("400", :from => 'rls-form-minrent')
  maxrent = select("1800", :from => 'rls-form-maxrent')
  beds = select("3", :from => 'rls-form-bedrooms')
  baths = select("2", :from => 'rls-form-bathrooms')
  pets = select("Dog and Cat", :from => 'rls-form-pets')
end
And(/^I click the 'Search' button$/) do
  click_button("SEARCH")
  #click_page_link do
    #@page_element = find('.rls-search-btn')
  #end
end
Then(/^I should be taken to the correct Apartments.com search results page$/) do
  page.current_path == "http://www.apartments.com/phoenix-az/#{beds}-beds-#{baths}-baths-#{minrent}-to-#{maxrent}-pet-friendly/"
  #$expected_path = "http://www.apartments.com/phoenix-az/3-beds-2-baths-400-to-1800-pet-friendly/"
  #expect(current_url).to match $expected_path
end
