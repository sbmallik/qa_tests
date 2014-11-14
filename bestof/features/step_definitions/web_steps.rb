Given(/^I am on the BESTOF home page at 'http:\/\/devwww\.azcentral\.com\/bestof\/home'$/) do
  visit "/"
end

Then(/^I should see the text "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^there should be two links with the class 'a\.button'$/) do
  page.assert_selector('a.button', :count => 2)
end

Then(/^I will locate the container ID that holds search 'Address, City or  City, State'$/) do
  within("#address"){ fill_in("inputtedAddress", :with => "Tempe, AZ")}
end

Then(/^I will click on the locate button to watch the map move to that area$/) do
  page.find(".geocodeMyAddress-js").click
end