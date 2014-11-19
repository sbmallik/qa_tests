Given(/^I am on the BESTOF home page at 'http:\/\/archive\.azcentral\.com\/bestof2014\/home'$/) do
  visit "/"
end

Then(/^there should be two links with the class 'a\.button'$/) do
  page.assert_selector('a.button', :count => 2)
end

Then(/^I will locate the container ID that holds search form with 'Address, City or  City, State' and enter 'Tempe, AZ'$/) do
  within("#address"){ fill_in("inputtedAddress", :with => "Tempe, AZ")}
end

Then(/^I will click on the locate button to watch the map refocus to that area$/) do
  page.find(".geocodeMyAddress-js").click
end