Given(/^I am viewing the home page of Bestof Palm Springs at "(.*?)"$/) do |url|
  visit url
end

Then(/^there should be two links with the class 'a\.button'$/) do
  page.assert_selector('a.button', :count => 2)
end

Then(/^I will locate the container ID that holds search form with 'Address, City or  City, State' and enter 'Palm Springs, CA'$/) do
  within("#address"){ fill_in("inputtedAddress", :with => "Palm Springs, CA")}
end

Then(/^I will click on the locate button to watch the map refocus to Palm Springs, CA$/) do
  page.find(".geocodeMyAddress-js").click
end