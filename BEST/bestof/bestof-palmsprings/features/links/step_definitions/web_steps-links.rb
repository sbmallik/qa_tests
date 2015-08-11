Given(/^I am viewing the navigation of the Bestof Palm Springs home page at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see the css for the Facebook icon in the first list item$/) do
	within("#nav"){ page.find("li:first-child", 'facebook-link-js')}
end

Then(/^I should see the css for the Twitter icon in the second list item$/) do
	within("#nav"){ page.find("li:nth-child(1)", 'twitter-link-js')}
end

Then(/^I should see the text How it works in the last list item$/) do
 	within("#nav"){ page.find("li:last-child", :text => "HOW IT WORKS")}
end